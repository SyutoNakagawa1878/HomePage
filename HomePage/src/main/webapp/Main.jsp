<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>左側に開閉できるメニュー</title>
    <script src="JS/main.js"></script>
	<link rel = "stylesheet" href="./CSS/main.css">
</head>
	<body>
	
	    <!-- サイドバー -->
	    <div id="sidebar">
	        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
	        <a href="#">メニュー１</a>
	        <a href="#">メニュー２</a>
	        <a href="#">メニュー３</a>
	        <a href="#">メニュー４</a>
	    </div>
	
	    <!-- メインコンテンツ -->
	    <div id="main">
	        <button class="openbtn" onclick="openNav()">&#9776; メニューを開く</button>  
	        <h2>メインコンテンツ</h2>
	        <p>ここにメインのコンテンツが表示されます。</p>
	    </div>
	
	</body>
</html>

