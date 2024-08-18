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
	    <h1 class="title">
		  <span>L</span>
		  <span>e</span>
		  <span>s</span>
		  <span>'</span>
		  <span>s</span>
		  <span>&nbsp;</span>
		  <span>G</span>
		  <span>o</span>
		  <span>&nbsp;</span>
		  <span>o</span>
		  <span>n</span>
		  <span>&nbsp;</span>
		  <span>a</span>
		  <span>&nbsp;</span>
		  <span>j</span>
		  <span>o</span>
		  <span>r</span>
		  <span>n</span>
		  <span>e</span>
		  <span>y</span>
		  <span>&nbsp;</span>
		  <span>t</span>
		  <span>h</span>
		  <span>e</span>
		  <span>&nbsp;</span>
		  <span>m</span>
		  <span>e</span>
		  <span>m</span>
		  <span>o</span>
		  <span>r</span>
		  <span>i</span>
		  <span>e</span>
		  <span>s</span>
		  <span>&nbsp;</span>
		  <span>o</span>
		  <span>f</span>
		  <span>&nbsp;</span>
		  <span>u</span>
		  <span>s</span>
		  <span>.</span>
		  
		</h1>
		
		<div class="inner fadeIn2600ms">
	        
	        <div class="input-group">
	            <input type="text" name="hisName" placeholder="His name"style="text-align: center;">
	            <span>and</span>
	            <div class="anim-box">
	            	<input type="text" name="herName" placeholder="Her name"style="text-align: center;">
	            </div>
	            
	        </div>
	        <input type="text" name="key" placeholder="password"style="text-align: center;">
	        <br><br>
	        <input type="submit" value="Let's Go!">
	        <br><br>
	        <font color="red">
	        	<strong><%= result = result!=null ? result : "" %></strong>
	        </font>
	    </div>
	        	</div><!-- /.inner -->
	    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
	        <script src="JS/login.js"></script>
	</body>
</form>
</html>	