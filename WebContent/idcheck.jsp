<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>중복체크</title>
<script type="text/javascript">
function idok(){
	opener.all.id.value = document.frm.id.value;
	opener.all.reid.value = document.frm.id.value;
	self.close();
}
</script>
</head>
<body>
	<h2>아이디 중복확인</h2>
	<form action="idCheck" method="get" name="frm">
		아이디 <input type="text" name="id" value=${id}> <input
			type="submit" value="중복체크"> <br>
		<c:if test="${result ==1}">
			<script type="text/javascript">
				openner.document.frm.id.value = "";
			</script>
	${id}는 사용중인 아이디 입니다.
	</c:if>
		<c:if test="${result ==-1}">
	${id}는 사용 가능한 아이디 입니다.  <input type="button" value="사용" class="cancel"
				onclick="idok()">
		</c:if>
	</form>
</body>
</html>