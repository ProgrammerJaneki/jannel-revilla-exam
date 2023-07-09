<?php

$apiKey = 'AIzaSyC5AGkcukgjgJXFaHBDdex9dLMDHrtAiGY';
$channelId = 'UCWJ2lWNubArHWmf3FIHbfcQ';
$maxResults = 100;

$baseUrl = "https://youtube.googleapis.com/youtube/v3/search";
$nextPageToken = '';
$reachedMaxResults = false;

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

// query url
$url = "{$baseUrl}?part=snippet&channelId={$channelId}&maxResults={$maxResults}&order=date&key={$apiKey}";

echo "INITIAL <br>";
while (!$reachedMaxResults || $totalItems <= $maxResults) {
    echo "CHECK";

    if (!empty($nextPageToken)) {
        $url .= "&pageToken={$nextPageToken}";
    }

    // executes the given url
    $res = file_get_contents($url);

    if ($res) {
        $data = json_decode($res, true);
        // each result has maximum of 50 items
        foreach ($data['items'] as $item) {

            if ($totalItems >= $maxResults) {
                echo "Maximum items has been met!";
                $reachedMaxResults = true;
                break;
            }

            // array values
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
