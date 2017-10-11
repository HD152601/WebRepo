<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="signupForm" class="form-signin">
<input type="email" name="id" id="inputEmail" .. >
<input type="password" name="pwd" id="inputPassword" .. >..
<button class="btnbtn-lgbtn-primary btn-block" type="submit">
Sign up</button></form>..<script>$(document).ready(function() {$('#signupForm').submit(function (event) {event.preventDefault();varid = $("#inputEmail").val();            varpwd= $("#inputPassword").val();varname = $("#inputName").val();      varnickname = $("#inputNickName").val();$.post("/WebClass/signup", { "id": id, "pwd": pwd, "name": name, "nickname": nickname },function(data) {if(data.msg == 'success')  location.href= "jsp/login.jsp";else if(data.msg == 'error')   // 에러모달창띄우기});});});</script></body>화면이reloading되지않아입력값이그대로남아있음Json 형식으로받음응답을처리할callback 함수{“msg” : “success” }
</html>