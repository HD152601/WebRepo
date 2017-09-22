<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>숫자 합 계산</title>
</head>
<body>
<form>
<input type="number" name="num" required>
<button type="submit">계산</button>
</form>
<%-- 스크립틀릿 tag로 1~입력받은 숫자까지의 합 구하기 --%>
<%-- 결과 출력 시 변수 값은 표현식 tag로 작성하기 (jsp 파일 로딩시에는 보이지 않음) --%>
<%! private static final String DEFAULT_NAME = "Guest"; %>
<%
// 자바 코드를 그대로 작성
String num = request.getParameter("num");
if(num != null){
int inum = Integer.parseInt(num);
int sum=0;


for(int i=1; i<=inum; i++)
{
	sum+=i;
}

%>
<h1>1 ~ <%=num%>까지의 합은 <%=sum%>입니다. </h1>
<%
}
%>
</body>
</html>