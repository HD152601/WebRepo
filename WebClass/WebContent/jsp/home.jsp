<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
  <title>
  KSW10309's H1omepage
  </title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"><!-- 반응형 -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link href="..\css\blog.css" type="text/css" rel="stylesheet">
    <link href="css\blog.css" type="text/css" rel="stylesheet">
    <script src = "..\js\script.js2"></script>
    <script src = "js\script.js2"></script>
  </head>
  <body>
  
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="home.jsp">HOME</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="..\myblog\soundmaking.html">Sound Making<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="..\myblog\harmony.html">재즈 화성학</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="..\myblog\song.html">좋아하는 음악</a>
      </li>
    </ul>
    <%
    	UserVO user = (UserVO)session.getAttribute("user");
    	String name = (user!=null ? user.getName():"");
    	if(user == null) {
     %>
    <form class="form-inline my-2 my-lg-0" id="loginForm" action="/WebClass/bloglogin" method="post">
      <input class="form-control mr-sm-2" type="text" <% if(request.getParameter("id") == null) { %> value = ""<% } else { %> value = <%= request.getParameter("id")%> <% } %> placeholder="ID" aria-label="ID" id="id" name="id" required>
      <input class="form-control mr-sm-2" type="password" placeholder="PW" aria-label="PW" id="pw" name="pwd" required>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
    </form>
    <%
    	}else{
    %>
    <form class="form-inline my-2 my-lg-0" id="loginForm" action="/WebClass/bloglogout" method="post">
      <h2 style="color: white; padding-right: 10px;"><%=name%>  </h2>
      
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Logout</button>
    </form>
    
    <%} %>
    
    <ul class="navbar-nav mr-0">
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="btn btn-outline-success my-2 my-sm-0" href="..\myblog\signup.html">회원가입</a>
      </li>
    </ul>
  </div>
</nav>
   <div class="container">
    <p>
    <h1> 안녕하세요</h1>
    <h2> KSW10309의 블로그입니다.</h2>
    <h3> 작곡과 음악을 좋아하는</h3>
    <h3> 디미고 회원들을 환영합니다.</h3>
    <p>
    	<ul type="square">
		<li>사운드메이킹 - 강좌/자료</li>
		<li>재즈 화성학 - 강좌/자료</li>
		<li>KSW10309의 추천 음악</li>
	</ul>
    </div>
  
 <!-- 모달창 -->
 <div class="modal" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">로그인 결과</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p></p>
      </div>
      <div class="modal-footer">
       <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>



<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <!-- jquery 이용-->
    
   <script>

   <%
      if("error".equals(request.getAttribute("msg"))) {
   %>
   var myModal = $('#myModal');
   myModal.find('.modal-title').text('Login Error');
   myModal.find('.modal-body').text('Invalid username or password');
   myModal.modal();
   <%
      }
   %>
   
   </script>
   
   

  
  </body>
</html>