<?php require_once('admin/scripts/config.php');
if(isset($_GET['filter'])){
<<<<<<< HEAD
	$tbl = 'tbl_movies';
	$tbl_2 = 'tbl_genre';
	$tbl_3 = 'tbl_mov_genre';
	$col = 'movies_id';
=======
	$tbl = 'tbl_media';
	$tbl_2 = 'tbl_genre';
	$tbl_3 = 'tbl_media_genre';
	$col = 'media_id';
>>>>>>> 166ad384b63a8b4d81793ea5f11b2b7ce4b0c6f3
	$col_2 = 'genre_id';
	$col_3 = 'genre_name';
	$filter = $_GET['filter'];
	$results = filterResults($tbl,$tbl_2,$tbl_3,$col,$col_2,$col_3,$filter);
}else{
<<<<<<< HEAD
	$results = getAll('tbl_movies');
=======
	$results = getAll('tbl_media');
>>>>>>> 166ad384b63a8b4d81793ea5f11b2b7ce4b0c6f3
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
<img src="images/<?php echo $row['movies_cover'];?>" 
	 alt="<?php echo $row['movies_title'];?>">
	 <h2><?php echo $row['movies_title'];?></h2>
	 <p><?php echo $row['movies_storyline'];?></p>
	 <a href="details.php?id=<?php echo $row['movies_id'];?>">Read More</a>
=======
<img src="images/<?php echo $row['cover'];?>" 
	 alt="<?php echo $row['title'];?>">
	 <h2><?php echo $row['title'];?></h2>
	 <p><?php echo $row['year'];?></p>
	 <a href="details.php?id=<?php echo $row['id'];?>">Read More</a>
>>>>>>> 166ad384b63a8b4d81793ea5f11b2b7ce4b0c6f3
<?php endwhile;?>
	</div>

<?php include('templates/footer.html');?>
</body>
</html>