<?php 
	function createUser($fname,$username,$password,$email){
			include('connect.php');
<<<<<<< HEAD
	
		$create_user_query = 'INSERT INTO tbl_user(user_fname,user_name,user_pass,user_email)';
=======
			
		$create_user_query = 'INSERT INTO tbl_user(user_fname,user_name,user_pass,user_email)'; //connect and insert into db
>>>>>>> 166ad384b63a8b4d81793ea5f11b2b7ce4b0c6f3
		$create_user_query .= ' VALUES(:fname,:username,:password,:email)';

		$create_user_set = $pdo->prepare($create_user_query);
		$create_user_set->execute(
			array(
				':fname'=>$fname,
				':username'=>$username,
				':password'=>$password,
				':email'=>$email
			)
		);
<<<<<<< HEAD

		if($create_user_set->rowCount()){
			redirect_to('admin_edituser.php');
		}else{
			$message = 'Your hiring practices have failed you.. this individual sucks...';
			return $message;
		}
=======
		if($create_user_set->rowCount()){
			redirect_to('./admin_login.php');
			//redirect to edit user page
		}else{
			$message = 'Your hiring practices have failed you.. this individual sucks...';
			return $message;
		};
>>>>>>> 166ad384b63a8b4d81793ea5f11b2b7ce4b0c6f3

}

function editUser($id, $fname, $username, $password, $email) {
<<<<<<< HEAD
include('connect.php');
	
		$update_user_query = 'UPDATE tbl_user SET user_fname=:fname, user_name=:username, user_pass=:password, user_email=:email WHERE user_id = :id';
=======
//To Do: use the createUser function as reference to build this function
//so that it can update the tbl_user with provided data

//when updated successfully, redirect to index.php
//otherwise, return an error message

include('connect.php');
	$update_user_query = 'UPDATE tbl_user SET user_fname=:fname, user_name=:username, user_pass=:password, user_email=:email, user_login = "old" WHERE user_id = :id';
>>>>>>> 166ad384b63a8b4d81793ea5f11b2b7ce4b0c6f3

		$update_user_set = $pdo->prepare($update_user_query);
		$update_user_set->execute(
			array(
				':id'=>$id,
				':fname'=>$fname,
				':username'=>$username,
				':password'=>$password,
				':email'=>$email
			)
		);

<<<<<<< HEAD
		if($update_user_set->rowCount()){
			redirect_to('admin_login.php');
			// redirect_to('index.php');
=======
		//login after edit
		if($update_user_set->rowCount()){
			redirect_to('index.php');
>>>>>>> 166ad384b63a8b4d81793ea5f11b2b7ce4b0c6f3
			// redirect to admin page after log out and log back in
		}else{
			$message = 'Something went wrong, oops!';
			return $message;
		}

}

function deleteUser($id){
//ToDo: 
//1. Build the sql query to delete user where user_id = $id
//2. Run the sql query
//3. If the execution is successful, redirect user to index.php
//Otherwise return an error

include('connect.php');
$delete_user_query = 'DELETE FROM tbl_user WHERE user_id = :id';

		$delete_user_set = $pdo->prepare($delete_user_query);
		$delete_user_set->execute(
			array(
				':id'=>$id
			)
		);

		if($delete_user_set->rowCount()){
			redirect_to('../index.php');
		}else{
			$message = 'Could not complete this task!';
			return $message;
		}

}