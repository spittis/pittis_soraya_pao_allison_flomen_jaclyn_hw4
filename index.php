<?php require_once('admin/scripts/config.php');
if(isset($_GET['filter'])){
	$tbl = 'tbl_media';
	$tbl_2 = 'tbl_genre';
	$tbl_3 = 'tbl_media_genre';
	$col = 'media_id';
	$col_2 = 'genre_id';
	$col_3 = 'genre_name';
	$filter = $_GET['filter'];
	$results = filterResults($tbl,$tbl_2,$tbl_3,$col,$col_2,$col_3,$filter);
}else{
	$results = getAll('tbl_media');
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
<img src="images/<?php echo $row['cover'];?>" 
	 alt="<?php echo $row['title'];?>">
	 <h2><?php echo $row['title'];?></h2>
	 <p><?php echo $row['year'];?></p>
	 <a href="details.php?id=<?php echo $row['id'];?>">Read More</a>
<?php endwhile;?>
	</div>

<?php include('templates/footer.html');?>
</body>
</html>