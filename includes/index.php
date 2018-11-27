<?php
    include 'functions.php';
    
    //single movie route
    if (isset($_GET["movie"])){
        $data = get_all_movies($conn, $_GET["movie"]);
        echo json_encode($data);
    } else {
        $data = get_all_movies($conn);
        echo json_encode($data);
        //can use this for portfolio pieces too - does not only apply to media
    }

    //single tv route
    if (isset($_GET["tv"])){
        $data = get_all_tv($conn, $_GET["tv"]);
        echo json_encode($data);
    } else {
        $data = get_all_tv($conn);
        echo json_encode($data);
        //can use this for portfolio pieces too - does not only apply to media
    }

    //single audio route
    if (isset($_GET["audio"])){
        $data = get_all_audio($conn, $_GET["audio"]);
        echo json_encode($data);
    } else {
        $data = get_all_audio($conn);
        echo json_encode($data);
        //can use this for portfolio pieces too - does not only apply to media
    }
?>