<?php

require 'database.php';
$stmt = $con->prepare('select * from product where name like :keyword');
$stmt->bindValue('keyword', '%'.$_POST['term'].'%');
$stmt->execute();
$result = array();
while($product = $stmt->fetch(PDO::FETCH_OBJ)) {
	array_push($result, $product->name);
}
echo json_encode($result);
print_r($result);
?>