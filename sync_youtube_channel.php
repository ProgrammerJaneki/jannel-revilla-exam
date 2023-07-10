<?php
// $apiKey = 'AIzaSyC5AGkcukgjgJXFaHBDdex9dLMDHrtAiGY';
$apiKey = 'AIzaSyD-bfRUd_roKr6T6cPeOyGy5uyryOSabLs';
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
$channelUrl = "https://youtube.googleapis.com/youtube/v3/channels?part=snippet&id={$channelId}&maxResults=1&key={$apiKey}";
$url = "{$baseUrl}?part=snippet&channelId={$channelId}&maxResults={$maxResults}&order=date&key={$apiKey}";

// Check if Youtube Name already exists
$channelName = "NBA";
$channelQuery = "SELECT * FROM youtube_channels WHERE name = ?";
$stmtChannel = mysqli_prepare($conn, $channelQuery);
mysqli_stmt_bind_param($stmtChannel, "s", $channelName);
if (mysqli_stmt_execute($stmtChannel)) {
    $nameResult = mysqli_stmt_get_result($stmtChannel);

    if (mysqli_num_rows($nameResult) > 1) {
        echo "Username already exists";
    } else {
        $channelRes = file_get_contents($channelUrl);
        if ($channelRes) {
            $channelData = json_decode($channelRes, true);

            $firstItem = $channelData['items'][0];
            $snippet = $firstItem['snippet'];
            $name = $snippet['title'];
            $description = $snippet['description'];
            $profilePicture = $snippet['thumbnails']['default']['url'];

            $insertChannelQuery = "INSERT INTO youtube_channels (profile_picture, name, description) VALUES (?, ?, ?)";

            $stmtChannelInsert = mysqli_prepare($conn, $insertChannelQuery);
            mysqli_stmt_bind_param($stmtChannelInsert, "sss", $profilePicture, $name, $description);

            if (mysqli_stmt_execute($stmtChannelInsert)) {
                echo "Channel added successfully!";
            }
        }
    }
}

while (!$reachedMaxResults || $totalItems <= $maxResults) {

    if (!empty($nextPageToken)) {
        $url .= "&pageToken={$nextPageToken}";
    }

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

            // prepares statement and bind values to the placeholders
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
