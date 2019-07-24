<?php  
require_once 'app/init.php';


if (isset($_POST['add'])) {
	if (isset($_POST['name'])) {
	$name = trim($_POST['name']);

	if (!empty($name)) {
		$addedquerry = $db->prepare("
			INSERT INTO items (name, user, done, created, ipaddress)
			VALUES (:name, :user, 0, NOW(), :ipaddress)
			");
		$addedquerry->execute([
			'name' => $name,
			'ipaddress' => $_SERVER['REMOTE_ADDR'],
			'user' => $_SESSION['user_id']
		]);
	}
}

}
	if (isset($_POST['delete'])) {
		$name = trim($_POST['name']);

	if (empty($name)) {
		$addedquerry = $db->prepare("
			DELETE FROM items 
			");
		$addedquerry->execute([
			'name' => $name
		]);
	}

}

header('Location: index.php');


?>