<?php

// $apiKey = 'AIzaSyDyeZBYAblc3V4TWlPM-oObkIN7r77PbvE';
// $apiKey = 'AIzaSyDqG6QH_a5ZwnzEvTgOz-GXpVKbbpjq-Q4';
$apiKey = 'AIzaSyC5AGkcukgjgJXFaHBDdex9dLMDHrtAiGY';
$channelId = 'UCWJ2lWNubArHWmf3FIHbfcQ';
$maxResults = 100;

$baseUrl = "https://youtube.googleapis.com/youtube/v3/search";
$nextPageToken = '';
// $videoCounter = 0;
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

// Retrieve the total count of items in youtub_channel_videos
$countQuery = "SELECT COUNT(*) AS total FROM youtube_channel_videos";
$countResult = mysqli_query($conn, $countQuery);
$countData = mysqli_fetch_assoc($countResult);
$totalItems = $countData['total'];

// $videoCounter = $totalItems;

// Testing
// $url = "https://youtube.googleapis.com/youtube/v3/search?part=snippet&channelId=UCWJ2lWNubArHWmf3FIHbfcQ&maxResults=1&order=date&key=AIzaSyDyeZBYAblc3V4TWlPM-oObkIN7r77PbvE";
$url = "{$baseUrl}?part=snippet&channelId={$channelId}&maxResults={$maxResults}&order=date&key={$apiKey}";

echo "INITIAL <br>";
while (!$reachedMaxResults || $totalItems <= $maxResults) {
    echo "CHECK";
    // checks if nextPageToken has been filled below
    if (!empty($nextPageToken)) {
        $url .= "&pageToken={$nextPageToken}";
    }

    // executes the given url
    $res = file_get_contents($url);

    if ($res) {
        $data = json_decode($res, true);
        // each result has maximum of 50 items
        foreach ($data['items'] as $item) {
            // Retrieve the total count of items in youtub_channel_videos
            // $countQuery = "SELECT COUNT(*) AS total FROM youtube_channel_videos";
            // $countResult = mysqli_query($conn, $countQuery);
            // $countData = mysqli_fetch_assoc($countResult);
            // $totalItems = $countData['total'];

            if ($totalItems >= $maxResults) {
                echo "Maximum items has been met!";
                $reachedMaxResults = true;
                break;
            }

            $snippet = $item['snippet'];
            $title = $snippet['title'];
            $description = $snippet['description'];
            $videoId = $item['id']['videoId'];
            $videoLink = 'https://www.youtube.com/watch?v=' . $videoId;
            $thumbnail = $snippet['thumbnails']['default']['url'];

            $insertQuery = "INSERT INTO youtube_channel_videos (video_link, title, description, thumbnail) VALUES (?, ?, ?, ?)";

            $stmt = mysqli_prepare($conn, $insertQuery);
            mysqli_stmt_bind_param($stmt, "ssss", $videoLink, $title, $description, $thumbnail);

            if (mysqli_stmt_execute($stmt)) {
                echo "New video added successfully.";
                $totalItems++;
            } else {
                echo "Error inserting the video: " . mysqli_error($conn);
            }

            mysqli_stmt_close($stmt);
        }

        $nextPageToken = isset($data['nextPageToken']) ? $data['nextPageToken'] : '';

        if (empty($nextPageToken)) {
            $reachedMaxResults = true;
        }

    } else {
        echo "Error encountered";
    }

}
mysqli_close($conn);

?>
