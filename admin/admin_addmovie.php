<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add Movie</title>
</head>
<body>

    <?php if(!empty($message)):?>
        <p><?php echo $message;?></p>
	<?php endif;?>

    <form action="admin_addmovie.php" method="post">
        <label for="cover">Cover Image:</label>
        <input type="file" name="cover" id="cover" value=""><br><br>

        <label for="title">Movie Title:</label>
        <input type="text" name="title" id="title" value=""><br><br>

        <label for="year">Movie Year:</label>
        <input type="text" name="year" id="year" value=""><br><br>

        <label for="run">Movie Runtime:</label>
        <input type="text" name="run" id="run" value=""><br><br>

        <label for="trailer">Movie Trailer:</label>
        <input type="text" name="trailer" id="trailer" value=""><br><br>

        <label for="release">Movie Release:</label>
        <input type="text" name="release" id="release" value=""><br><br>

        <label for="story">Movie Storyline:</label>
        <textarea name="story" id="story" value=""></textarea><br><br>

        <label for="genlist">Genre:</label>
        <select name="genlist" id="genlist">
            <option value="">Please pick a movie genre...</option>
        </select><br><br>

        <button type="submit" name="submit">Add Movie</button>

    </form>
    
</body>
</html>