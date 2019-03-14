<?php
    include 'functions.php';

    //single movie route
    if (isset($_GET["movie"])) {
        $data = get_single_video($conn, $_GET["movie"]);
        echo json_encode($data);
    } else {
        $data = get_all_videos($conn);
        echo json_encode($data);
    }

?>