<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
function a(){
   if(f.writer.value==''){
      alert("�ۼ��� �ʼ�");
      return
   }
   if(f.pwd.value==''){
      alert("�� ��й�ȣ �ʼ�");
      return
   }
   if(f.content.value==''){
      alert("�� ����  �ʼ�");
      return
   }
   f.submit()
}
</script>
</head>
<body>
<table border="1">
<form action="DWP0722/guestbook/write" method="post" name="f">
<tr>
<td>�ۼ���</td><td><input type="text" name="writer"></td><br/>
</tr>
<tr>
<td>��й�ȣ</td><td><input type="password" name="pwd"></td><br/>
</tr>
<tr>
<td>����</td><td><textarea rows="5" cols="20" name="content"></textarea></td><br/>
</tr>
<tr>
<td colspan="2"><input type="button" value="�ۼ� " onclick="a()"></td>
</tr>
</form>
</table>
</body>
</html>