<?php 
$db_dsn = array(
	'host'=>'localhost',
<<<<<<< HEAD
	'dbname'=>'db_movies1',
=======
	'dbname'=>'db_roku',
>>>>>>> 166ad384b63a8b4d81793ea5f11b2b7ce4b0c6f3
	'charset'=>'utf8'
);

$dsn = 'mysql:'.http_build_query($db_dsn, '', ';');

//This is the DB credentials
$db_user = 'root';
$db_pass = 'root';

try{
	$pdo = new PDO($dsn, $db_user, $db_pass);
}catch(PDOException $exception){
	echo 'Connection Error:'.$exception->getMessage();
	exit();
}