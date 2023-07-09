<?php

$apiKey = 'AIzaSyDyeZBYAblc3V4TWlPM-oObkIN7r77PbvE';
$channelId = 'UCWJ2lWNubArHWmf3FIHbfcQ';
$maxResults = 2;

$baseUrl = "https://youtube.googleapis.com/youtube/v3/search";
$nextPageToken = '';
$videoCounter = 0;
$reachedMaxResults = false;

// $response = file_get_contents($url);
// mysql db connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "youtube_db";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Testing
$url = "https://youtube.googleapis.com/youtube/v3/search?part=snippet&channelId=UCWJ2lWNubArHWmf3FIHbfcQ&maxResults=1&order=date&key=AIzaSyDyeZBYAblc3V4TWlPM-oObkIN7r77PbvE";

$res = file_get_contents($url);

if ($res) {
    $data = json_decode($res, true);

    if (isset($data['items'][0])) {

        $first_item = $data['items'][0];
        $snippet = $first_item['snippet'];
        $title = $snippet['title'];
        $description = $snippet['description'];
        $videoId = $first_item['id']['videoId'];
        $videoLink = 'https://www.youtube.com/watch?v=' . $videoId;
        $thumbnail = $snippet['thumbnails']['default']['url'];

        // $insertQuery = "INSERT INTO youtube_channel_videos (video_link, title, description, thumbnail)
        // VALUES ('$videoLink', '$title', '$description', '$thumbnail')";

        // $videoLink = 'https://www.youtube.com/watch?v=test1';
        // $title = 'Test Video 2';
        // $description = 'This is a test video 1';
        // $thumbnail = 'https://i.ytimg.com/vi/u7JIo8ABeTs/default.jpg';

        $data_array = array(
            'title' => $title,
            'description' => $description,
            'videoLink' => $videoLink,
            'thumbnail' => $thumbnail,
        );

        $insertQuery = "INSERT INTO youtube_channel_videos (video_link, title, description, thumbnail) VALUES ('$videoLink', '$title', '$description', '$thumbnail')";

        if (mysqli_query($conn, $insertQuery)) {
            echo "New video added successfully.";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }

        // mysqli_query($conn, $insertQuery);

        // echo json_encode($data_array);

        // $insertQuery = "INSERT INTO youtube_channel_videos (video_link, title, description, thumbnail) VALUES ('$videoLink', '$title', '$description', '$thumbnail')";

        // if (mysqli_query($conn, $insertQuery)) {
        //     echo "New record created successfully";
        // } else {
        //     echo "New record not created successfully";
        // }
    }
    // echo json_encode($data);
}

// while (true) {
//     $url = "{$baseUrl}?part=snippet&channelId={$channelId}&maxResults={$maxResults}&order=date&key={$apiKey}";

//     if (!empty($nextPageToken)) {
//         $url .= "&pageToken={$nextPageToken}";
//     }

//     $res = file_get_contents($url);

//     if ($res) {
//         $data = json_decode($res, true);

//         foreach ($data['items'] as $item) {
//             $snippet = $item['snippet'];
//             $title = $snippet['title'];
//             $description = $snippet['description'];
//             $videoId = $item['id']['videoId'];
//             $videoLink = 'https://www.youtube.com/watch?v=' . $videoId;
//             $thumbnail = $snippet['thumbnails']['default']['url'];

//             $insertQuery = "INSERT INTO youtube_channel_videos (video_link, title, description, thumbnail) VALUES ('$videoLink', '$title', '$description', '$thumbnail')";

//             if (mysqli_query($conn, $insertQuery)) {
//                 echo "New video added successfully";
//                 $videoCounter++;
//             } else {
//                 echo "Error inserting the video: " . mysqli_error($conn);
//             }

//             if ($videoCounter >= $maxResults) {
//                 // breaks the while loop as well if true
//                 $reachedMaxResults = true;
//                 break;
//             }
//         }
//         $nextPageToken = isset($data['nextPageToken']) ? $data['nextPageToken'] : '';

//         if (empty($nextPageToken) || $reachedMaxResults) {
//             break;
//         }
//     } else {
//         echo "Error encountered!";
//         break;
//     }

// }

mysqli_close($conn);

?>
