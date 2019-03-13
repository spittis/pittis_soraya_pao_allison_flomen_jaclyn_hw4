<?php
require_once('scripts/config.php');
confirm_logged_in();
$id = $_SESSION['user_id']; //we put data into the session in the login.php file

$tbl = 'tbl_user';
$col = 'user_id';


//TODO: Pull all user columns from tbl_user where user_id = $id
// include('./scripts/connect.php');
// $query = 'SELECT * FROM '.$tbl.' WHERE '.$col.' = '.$id;
// $runQuery = $pdo->query($query);
// $found_user = $runQuery->fetch(PDO::FETCH_ASSOC);
// var_dump($found_user);
// exit;

$found_user_set = getSingle($tbl, $col, $id);
if(is_string($found_user_set)){
    $message = 'Failed to get user info!';
}

// $found_user = $found_user_set->fetch(PDO::FETCH_ASSOC);
// var_dump($found_user);
// exit;



if(isset($_POST['submit'])){
    $fname = trim($_POST['fname']);
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);
    $email = trim($_POST['email']);

    //Validation
    if(empty($username) || empty($password) || empty($email)) {
        //ensure consistency between admin_createuser.php and admin_edituser.php
        $message = 'Please fill the required fields';
    }else{
        //Do the edit
        //how do we know the user's information? SESSION
        $result = editUser($id,$fname,$username,$password,$email);
		$message = $result;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Edit User</title>
</head>
<body>
    <?php if(!empty($message)):?>
		<p><?php echo $message;?></p>
	<?php endif;?>

    <?php if($found_user = $found_user_set->fetch(PDO::FETCH_ASSOC)):?>

    <h2>Edit User</h2>

    <form method="POST" action="admin_edituser.php">
    <label for="first-name">First Name:</label>
		<input type="text" id="first-name" name="fname" value="<?php echo $found_user['user_fname']; ?>"><br><br>

		<label for="username">User Name:</label>
		<input type="text" id="username" name="username" value="<?php echo $found_user['user_name']; ?>"><br><br>

		<label for="email">Email:</label>
		<input type="email" id="email" name="email" value="<?php echo $found_user['user_email']; ?>"><br><br>

		<label for="password">Password:</label>
		<input type="text" id="password" name="password" value="<?php echo $found_user['user_pass']; ?>"><br><br>

		<button type="submit" name="submit">Edit User</button> 
        
    </form>
    <?php endif;?>
</body>
</html>