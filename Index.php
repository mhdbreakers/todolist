<?php
require_once 'app/init.php';
$itemsquery= $db->prepare("
	SELECT id, name, done
	FROM items
	WHERE user = :user
");

$itemsquery->execute([
	'user' => $_SESSION['user_id']
]);

$items = $itemsquery->rowCount() ? $itemsquery : [];


?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<title> Todo list | Mhd_breakers </title>
</head>
<body>
	<?php  
		
		
	?>
	<div class="list">
		<h1 class="header"> Todolist <p class="subtitle"> | Gérer vos tâches éfficacement</p> </h1>
		<?php if(!empty($items)): ?>  
		<ul class="items">
			<?php foreach ($items as $item): ?>
				<li>
					<span class="item<?php echo $item['done'] ? 'done' : ''  ?>"> <?php echo $item['name']; ?> </span>
					<?php if (!$item['done']): ?>
						<a href="mark.php?as=done&item=<?php echo $item['id']?>" class="done-button"> Terminer </a>				
					<?php endif; ?>
				</li>
			<?php endforeach; ?>
		</ul>
		<?php else: ?>
			<p> Vous n'avez aucune tâche actuellement. </p>
		<?php endif; ?>	

		<form class="items-add" action="todolist_process.php" method="post">
			<input type="text" name="name" placeholder="Entrer une nouvelle tâche." class="input" autocomplete="off">
			<input type="submit" value="Ajouter" class="submit" name="add">
			<input type="submit" value="Vider" class="clean" name="delete">				
		</form>
	</div>

</body>
</html>