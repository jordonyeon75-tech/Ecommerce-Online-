<?php
	include 'includes/session.php';

	if(isset($_GET['pay'])){
		$payid = $_GET['pay'];
		$date = date('Y-m-d');

		$conn = $pdo->open();

		try{
			
			$stmt = $conn->prepare("INSERT INTO sales (user_id, pay_id, sales_date) VALUES (:user_id, :pay_id, :sales_date)");
			$stmt->execute(['user_id'=>$user['id'], 'pay_id'=>$payid, 'sales_date'=>$date]);
			$salesid = $conn->lastInsertId();
			
			try{
				$stmt = $conn->prepare("SELECT * FROM cart LEFT JOIN products ON products.id=cart.product_id WHERE user_id=:user_id");
				$stmt->execute(['user_id'=>$user['id']]);

				foreach ($stmt as $row) {
                // Check if the quantity being purchased doesn't exceed the available stock
                if ($row['quantity'] <= $row['stock']) {
                    $stmt2 = $conn->prepare("INSERT INTO details (sales_id, product_id, quantity) VALUES (:sales_id, :product_id, :quantity)");
                    $stmt2->execute(['sales_id' => $salesid, 'product_id' => $row['product_id'], 'quantity' => $row['quantity']]);
                    
                    // Update the available stock after purchase
                    $newStock = $row['stock'] - $row['quantity'];
                    $stmt3 = $conn->prepare("UPDATE products SET stock=:newStock WHERE id=:product_id");
                    $stmt3->execute(['newStock' => $newStock, 'product_id' => $row['product_id']]);
                } else {
                    // If the quantity exceeds the available stock, notify the user or handle the situation accordingly
                    // For simplicity, I'll set an error message here, but you can customize it as needed.
                    $_SESSION['error'] = 'The quantity exceeds available stock for product: ' . $row['name'];
                    // You might want to redirect the user to an error page or handle this differently based on your application's requirements.
                }
				
			}

				$stmt = $conn->prepare("DELETE FROM cart WHERE user_id=:user_id");
				$stmt->execute(['user_id'=>$user['id']]);

				$_SESSION['success'] = 'Transaction successful. Thank you.';

			}
			catch(PDOException $e){
				$_SESSION['error'] = $e->getMessage();
			}

		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}

		$pdo->close();
	}
	
	header('location: profile.php');
	
?>