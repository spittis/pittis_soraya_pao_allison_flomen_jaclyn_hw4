<?php require_once('admin/scripts/config.php');

if(isset($_GET['media'])){
	$type = $_GET['media']; //this will alwyas be audio, video, or tv

	if($type == "video") {
		$tbl = "tbl_movies";
	}else if($type == "audio"){
		$tbl = "tbl_audio";
	}else if ($type == "tv"){
		$tbl = "tbl_tv";
	}
}

if(isset($_GET['filter'])){
	$tbl = 'tbl_movies';
	$tbl_2 = 'tbl_genre';
	$tbl_3 = 'tbl_movies_genre';
	$col = 'movies_id';
	$col_2 = 'genre_id';
	$col_3 = 'genre_name';
	$filter = $_GET['filter'];
	$results = filterResults($tbl,$tbl_2,$tbl_3,$col,$col_2,$col_3,$filter);
	echo json_encode($results);
}else{
	$results = getAll('tbl_movies');
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
<img src="images/<?php echo $row['movie_cover'];?>" 
	 alt="<?php echo $row['movie_title'];?>">
	 <h2><?php echo $row['movie_title'];?></h2>
	 <p><?php echo $row['movie_year'];?></p>
	 <a href="details.php?id=<?php echo $row['movie_id'];?>">Read More</a>
<?php endwhile;?>
	</div>

<?php include('templates/footer.html');?>
</body>
</html>