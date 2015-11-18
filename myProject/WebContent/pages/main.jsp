<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<% 
	String mainImg = "/myProject/images/mainImg02.jpg";
						//    "/myProject/images/mainImg02.jpg",
						//  "/myProject/images/mainImg03.jpg"};
	String btnImg = "/myProject/images/cirOn.png";
		//"/myProject/images/cirOut.png"};
		
	String msg = "메인페이지입니다>_<";
%>

<script type="text/javascript">
	var mainImg = "/myProject/images/mainImg02.jpg";
	var btnImg = "/myProject/images/cirOn.png";
	
	function mChange(paraImg){
		var cir1 = document.getElementById("first");
		var cir2 = document.getElementById("second");
		var cir3 = document.getElementById("third");
		var main = document.getElementById('main');
		
		if(paraImg=='img01'){
			main.style.background = "url('/myProject/images/mainImg03.jpg')";
			cir1.src = "/myProject/images/cirOn.png";
			cir2.src = "/myProject/images/cirOut.png";
			cir3.src = "/myProject/images/cirOut.png";
		} else if(paraImg=='img02'){
			main.style.background = "url('/myProject/images/mainImg02.jpg')";
			cir1.src = "/myProject/images/cirOut.png";
			cir2.src = "/myProject/images/cirOn.png";
			cir3.src = "/myProject/images/cirOut.png";
		} else if(paraImg=='img03'){
			main.style.background = "url('/myProject/images/mainImg01.jpg')";
			cir1.src = "/myProject/images/cirOut.png";
			cir2.src = "/myProject/images/cirOut.png";
			cir3.src = "/myProject/images/cirOn.png";
		}
	}
</script>
</head>
<body bgcolor="#0E1B45">

<!-- ------------------------------------------------------------------- -->
<%@include file="top.jsp" %>
<!-- ------------------------------------------------------------------- -->

<div id="main" style="height: 600px; background: url('/myProject/images/mainImg02.jpg') no-repeat center 0;">
	<ul style="list-style: none">
		<li style="color: white;text-align: center; font-size: 50pt;">
			<br><%=msg%>
			<br>
			<br>
			<br>
			<br>
		</li>
	</ul>
	<ul style="list-style: none">
		<li style="color: white;text-align: center; font-size: 50pt;">
		<img src="/myProject/images/cirOut.png" onMouseover="mChange('img01')" id = "first">
		<img src="/myProject/images/cirOut.png" onMouseover="mChange('img02')" id = "second">
		<img src="/myProject/images/cirOut.png" onMouseover="mChange('img03')" id = "third">
		</li>
	</ul>
</div>

<!-- ------------------------------------------------------------------- -->
<%@include file="bottom.jsp" %>
<!-- ------------------------------------------------------------------- -->

</body>
</html>