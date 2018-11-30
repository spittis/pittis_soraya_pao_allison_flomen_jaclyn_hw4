<?php
    include 'connect.php';
    // get one movie first
    function get_single_movie($pdo, $mov) {
        $query = "SELECT * FROM tbl_movies WHERE movies_id = $mov"; 
        //attach the id in the thumnail to ensure you are getting the right image

        $get_movie = $pdo->query($query);
        $results = array();

        while($row = $get_movie->fetch(PDO::FETCH_ASSOC)) {
            $results[] = $row;
        }
        return $results;
    }

    //get all movies
    function get_all_movies($pdo) {
        $query = "SELECT * FROM tbl_movies";
        
        $get_movie = $pdo->query($query);
        $results = array();
        
        while($row = $get_movie->fetch(PDO::FETCH_ASSOC)) {
            $results[] = $row;
        }
        
        return $results; 
        }


?>