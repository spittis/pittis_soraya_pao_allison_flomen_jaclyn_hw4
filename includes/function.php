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


        //TELEVISION
        function get_single_tv($pdo, $tv) {
            $query = "SELECT * FROM tbl_tv WHERE tv_name = $tv"; 
            //attach the id in the thumnail to ensure you are getting the right image
    
            $get_tv = $pdo->query($query);
            $results = array();
    
            while($row = $get_tv->fetch(PDO::FETCH_ASSOC)) {
                $results[] = $row;
            }
            return $results;
        }
    
        //get all media
        function get_all_tv($pdo) {
            $query = "SELECT * FROM tbl_tv";
            
            $get_tv = $pdo->query($query);
            $results = array();
            
            while($row = $get_tv->fetch(PDO::FETCH_ASSOC)) {
                $results[] = $row;
            }
            
            return $results; 
            }

             //AUDIO
        function get_single_audio($pdo, $aud) {
            $query = "SELECT * FROM tbl_audio WHERE audio_name = $aud"; 
            //attach the id in the thumnail to ensure you are getting the right image
    
            $get_audio = $pdo->query($query);
            $results = array();
    
            while($row = $get_audio->fetch(PDO::FETCH_ASSOC)) {
                $results[] = $row;
            }
            return $results;
        }
    
        //get all audio
        function get_all_audio($pdo) {
            $query = "SELECT * FROM tbl_audio";
            
            $get_audio = $pdo->query($query);
            $results = array();
            
            while($row = $get_audio->fetch(PDO::FETCH_ASSOC)) {
                $results[] = $row;
            }
            
            return $results; 
            }

?>