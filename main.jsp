<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면 최적화 -->
<meta name="viewport" content="width-device-width, initial-scale=1">

<!-- 루트 폴더에 부트스트랩을 참조하는 링크 -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- 폰트 수정을 위해 작성한 'css' 파일을 참조하는 링크 -->
<link rel="stylesheet" href="css/custom.css">
<title>DB NAS</title>
</head>
<body>
	<%
		//메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
		String userID = null;
		if (session.getAttribute("userID")!= null){
			userID = (String)session.getAttribute("userID");
		}
		
	%>
	<nav class="navbar navbar-default"> <!--네비게이션--> 
		<div class="navbar-header"> <!-- 네비게이션 상단 부분 -->
			<button type ="button" class ="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				
			</button>
			
			<!-- 상단 바에 제목이 나타나고 클릭하면 main 페이지로 이동한다 -->
			<a class="navbar-brand" href="main.jsp">DB NAS</a>
		</div>
		
		<!-- 게시판 제목 이름 옆에 나타나는 메뉴 영역-->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a><li>
				<li><a href="bbs.jsp">게시판</a><li>
			</ul>
			<%
				//로그인 하지 않았을 때 보여지는 화면
				if(userID == null){
			%>
			
			<!-- 헤더 우측에 나타나는 드랍다운 영역 -->
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">접속하기<span class="caret"></span></a>
					<!-- 드랍다운 아이템 영역 -->
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul>
					</li>
			</ul>
			
			<%
				//로그인이 되어 있는 상태에서 보여주는 화면
				}else{
			%>
			
			<!-- 헤더 우측에 나타나는 드랍다운 영역 -->
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">회원관리<span class="caret"></span></a>
					<!-- 드랍다운 아이템 영역-->
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
			<%
				}
			%>
		</div>
		
	</nav>
	
	<!-- 메인 페이지 영역 시작 -->
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>DB NAS WEB PAGE</h1>
				<br>
				<h2>Database Lab<br>Be your best</h2>
				<p><br>경성대학교 DB 연구실 자료를 위해 제작된 <br>DB NAS 서버 홈페이지입니다.</p>
				<a class="btn btn-primary btn-pull" href="#labActivityArea" role="button">LAB ACTIVITY</a>
				
			</div>
		</div>
	</div>
	<!--  메인 페이지 영역 끝 -->
	
	<!-- 메인 페이지 이미지 삽입 영역 -->
	<div id="labActivityArea" class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1" ></li>
				<li data-target="#myCarousel" data-slide-to="2" ></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/1.jpg">
				</div>
				<div class="item">
					<img src="images/2.jpg">
				</div>
				<div class="item">
					<img src="images/3.jpg">
				</div>
				
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class ="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class ="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	
	<!-- 메인 페이지 영역 끝 -->
	
	<!--  하단 공간 시작-->
	<div class="page-header">
	</div>
	<!-- 하단 공간 끝 -->
	
	<!--부트스트랩 참조 영역-->
        <script src ="https://code.jquery.com/jquery-3.1.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
</body>
</html>