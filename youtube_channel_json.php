
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "youtube_db";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Query to retrieve Youtube Channel Information
$channelQuery = "SELECT * FROM youtube_channels";
$channelResult = mysqli_query($conn, $channelQuery);

// Query to retrieve Youtube Channel Videos
$videoQuery = "SELECT * FROM youtube_channel_videos";
$videoResults = mysqli_query($conn, $videoQuery);

// Get the total of items in youtube_channel_videos
$video_count = mysqli_num_rows($videoResults);

// fetch data from channel result
$channelData = mysqli_fetch_assoc($channelResult);

// fetch data from video results
$videoData = [];
while ($row = mysqli_fetch_assoc($videoResults)) {
    $videoData[] = $row;
}

// Close the database conenction
mysqli_close($conn);

// Combine channel information and video data
$combinedData = [
    "channel_info" => $channelData,
    "videos" => $videoData,
    "video_count" => $video_count,
];

// Convert to JSON FORMAT
$jsonData = json_encode($combinedData);

// set headers
header('Content-Type: application/json');

echo $jsonData;