<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msg = request.getParameter("msg");
%>
<!DOCTYPE html>
<html>
<head>
<link href="../css/bootstrap.min.css"  rel="stylesheet">
<script src="../js/jquery-3.3.1.slim.min.js"></script>
<script src="../js/jquery.validate.min.js"></script>
<script src="../js/joinForm.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>회원가입</title>

</head>
<body>
<form id="joinForm" action="../join.do" method="post">	
	<table>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="userid" id="userid"></td>
			<td><small id="userid"></small></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password" id="password"></td>
			<td><small id="password"></small></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" id="name"></td>
			<td><small id="name"></small></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
				<input type="radio" name="gender" id="gender" value="남">남
				<input type="radio" name="gender" id="gender" value="여">여
			</td>
			<td><small id="gender"></small></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="email" name="email" id="email"></td>
			<td><small id="email"></small></td>
		</tr>
		<tr>
			<td colspan="3">
				<input type="submit" value="회원가입">
				<input type="button" value="취소">
			</td>
		</tr>
	</table>
</form>
<script>
	$(function(){
		$("#joinForm").validate();
		$("document").ready(function(){
			var msg= '<%=msg %>';
			if(msg=='fail'){
				alert('회원가입 정보를 확인해 주세요');
			}
		});
	});
</script>
</body>
</html>