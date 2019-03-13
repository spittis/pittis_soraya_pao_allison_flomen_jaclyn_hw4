<?php require_once('admin/scripts/config.php');
if(isset($_GET['id'])){
<<<<<<< HEAD
	$tbl = 'tbl_movies';
	$col = 'movies_id';
=======
	$tbl = 'tbl_media';
	$col = 'media_id';
>>>>>>> 166ad384b63a8b4d81793ea5f11b2b7ce4b0c6f3
	$value = $_GET['id'];
	$results = getSingle($tbl, $col, $value);
}else{
	
}
?>

<!doctype html>
<html>
<head>
	<meta charset='utf-8'>
	<title>Movie Reviews</title>
</head>
<body>
	<?php include('templates/header.html'); ?>
	<h1>This is the movie site</h1>
	<div>
	<?php while($row = $results->fetch(PDO::FETCH_ASSOC)):?>
<<<<<<< HEAD
		<h2><?php echo $row['movies_title'];?></h2>
=======
		<h2><?php echo $row['title'];?></h2>
>>>>>>> 166ad384b63a8b4d81793ea5f11b2b7ce4b0c6f3
	<?php endwhile;?>
	</div>

	<?php include('templates/footer.html');?>
</body>
</html>