<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style1.css">
    <title>Videos</title>
</head>
<body>
        <div class="logo">
        <a href="index.php"><img src="images/logo/4.png" alt="logo images" style="float:right"></a>
		<a href="index.php"><img src="exit.png" alt="logo images"></a>
		</div>
		
	
    <section>
        <h2 class="title"></h2>
        <div class="container">
            <div id="video_player">
                <video controls id="main-Video" src=""></video>
            </div>
            <div class="playlistBx">
                <div class="header">
                    <div class="row">
                        <span class="AllLessons"></span>
                    </div>
                </div>
                <ul class="playlist" id="playlist">
                </ul>
            </div>
        </div>
    </section>
    <script src="./video-list.js"></script>
    <script src="./script.js"></script>

</body>
</html>