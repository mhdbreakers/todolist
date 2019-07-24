<?php  
require_once 'app/init.php';

if (isset($_POST['name'])) {
	$name = trim($_POST['name']);

	if (!empty($name)) {
		$deletequerry = $db->prepare("
			DELETE FROM items 
			WHERE id = :id
			");
		$addedquerry->execute([
			'name' => $name,
		]);
	}
}
header('Location: index.php')


?>