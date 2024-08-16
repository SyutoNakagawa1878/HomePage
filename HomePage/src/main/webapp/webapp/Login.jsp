<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
//リクエストスコープからのデータの取得
String result = (String)request.getAttribute("result");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href="./CSS/login.css">
</head>
<form action="./login" method="post">
	<body>
		
	    <div class="container">
	        <h1>あなたと大切な人との合言葉を入力してください</h1>
	        <div class="input-group">
	            <input type="text" name="hisName" placeholder="彼氏の名前"style="text-align: center;">
	            <span>と</span>
	            <input type="text" name="herName" placeholder="彼女の名前"style="text-align: center;">
	        </div>
	        <input type="text" name="key" placeholder="合言葉を入力してください"style="text-align: center;">
	        <br><br>
	        <input type="submit" value="思い出を見る">
	        <br><br>
	        <strong><%= result = result!=null ? result : "" %></strong>
	    </div>
	</body>
</form>
</html>	