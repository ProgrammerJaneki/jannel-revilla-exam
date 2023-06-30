<!-- Youtube Channel -->
<!--
PROFILE PICTURE: snippet: { thumbnails: {default: {url; https://yt3.ggpht.com/urNLBJGryDamao5r0jmlTg84mIBOoaeJd6XR67j4nuRd0iRvv5g-MUgaowsWKCs8V_t4KwST=s88-c-k-c0x00ffffff-no-rj}} }
NAME: snippet: { title: NBA }
DESCRIPTION: snippet: { description: The NBA is the premier professional basketball league ... }
-->
<!-- YOUTUBE CHANNEL VIDEOS -->
<!--
VIDEO ID: id: {videoId: 4uDKhPRjIu8}
TITLE: snippet: { title: Jayson Tatum Pulled Up To #NYvsNY 👀 | #Shorts }
DESCRIPTION: snippet: { description:  }
THUMBNAIL: snippet: {thumbnails: { default: { url: https://i.ytimg.com/vi/4uDKhPRjIu8/default.jpg } }}
-->

<?php
$apiKey = 'AIzaSyDyeZBYAblc3V4TWlPM-oObkIN7r77PbvE';
$channelId = 'UCWJ2lWNubArHWmf3FIHbfcQ';
$maxResults = 100;

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

while (true) {
    $url = "{$baseUrl}?part=snippet&channelId={$channelId}&maxResults={$maxResults}&order=date&key={$apiKey}";

    if (!empty($nextPageToken)) {
        $url .= "&pageToken={$nextPageToken}";
    }

    // get the response
    $res = file_get_contents($url);

    if ($res) {
        $data = json_decode($res, true);

        foreach ($data['items'] as $item) {
            $snippet = $item['snippet'];
            $title = $snippet['title'];
            $description = $snippet['description'];
            $videoId = $item['id']['videoId'];
            $videoLink = 'https://www.youtube.com/watch?v=' . $videoId;
            $thumbnail = $snippet['thumbnails']['default']['url'];

            $insertQuery = "INSERT INTO youtube_channel_videos (video_link, title, description, thumbnail) VALUES ('$videoLink', '$title', '$description', '$thumbnail')";

            if (mysqli_query($conn, $insertQuery)) {
                echo "New video added successfully";
                $videoCounter++;
            } else {
                echo "Error inserting the video: " . mysqli_error($conn);
            }

            if ($videoCounter >= $maxResults) {
                // breaks the while loop as well if true
                $reachedMaxResults = true;
                break;
            }
        }
        // checks if nextPageToken exists
        $nextPageToken = isset($data['nextPageToken']) ? $data['nextPageToken'] : '';

        if (empty($nextPageToken) || $reachedMaxResults) {
            break;
        }
    } else {
        echo "Error encountered!";
        break;
    }

}

mysqli_close($conn);
