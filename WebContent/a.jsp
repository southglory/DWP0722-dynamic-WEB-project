<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% //스크립트릿 : 자바코드 . request:요청/ response:응답
	String id = request.getParameter("id");//폼파라미터 값 읽음.파라미터: 폼파라미터 이름
	String pwd = request.getParameter("pwd");
	String[] hobby = request.getParameterValues("hobby");
	String gender = request.getParameter("gender");
	String grade = request.getParameter("grade");
	String msg = request.getParameter("msg");
	String type = request.getParameter("type");
%>
<h3>파라미터 출력</h3>
id:<%=id %><br/> <!-- 자바 변수 출력 -->
pwd:<%=pwd %><br/>
hobby:<% for(String i:hobby){out.print(i+"<br/>");} %><br/>
gender:<%=gender %><br/>
grade:<%=grade %><br/>
msg:<%=msg %><br/>
type: <%= type %><br/>
</body>
</html>