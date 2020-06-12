<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="Header.jsp" />
<style>
body {
   background-image: url(./img/s.jpg);
   background-repeat: no-repeat;
   min-height: 100%;
   min-width: 1024px;
   width: 100%;
   height: auto;
   position: fixed;
   top: 0;
   left: 0;
}
.col-sm-12{
	margin-top: auto;
	margin-bottom: auto;
	margin-left :10%;
	margin-right :10%;
	
	background-color: rgba(255, 255, 255, 0.9) !important;
	width: 80%;	
	
}
.form-control{
	background-color: rgba(255, 255, 255, 0.7) !important;
}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8"); //jsp간 정보를 주고 받을때 코딩방식
		String no = (String) request.getParameter("no");
		String title = (String) request.getParameter("title");
	%>
<br>
<br>
<br>

	<div class="container-fluid"></div>

	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div class="col-sm-2"></div>
				<div class="col-sm-9">
					<h2 class="text-center">
						<%=no%>
						번 게시글 수정하기
					</h2>

					<form action="Writemod" method="post">
						<input type="hidden" name="no" value="<%=no%>">
						<table class="table table-striped">
							<tr>
								<th>제목</th>
								<td><input type="text" class="form-control" name="title"
									placeholder="<%=title%>"></td>
							</tr>

							<tr>
								<th>카테고리</th>
								<td><select name="interest" class="form-control">
										<option value="소설">소설</option>
										<option value="시/에세이">시/에세이</option>
										<option value="경제/경영">경제/경영</option>
										<option value="가기계발">자기계발</option>
										<option value="인문">인문</option>
										<option value="역사/문화">역사/문화</option>
										<option value="사회">사회</option>
										<option value="과학/공학">과학/공학</option>
										<option value="가정/생활/요리">가정/생활/요리</option>
										<option value="취미/레저">취미/레저</option>
										<option value="여행/지도">여행/지도</option>
										<option value="가기계발">유아/어린이</option>
								</select></td>
							</tr>

							<tr>
								<th>내용</th>
								<td><textarea rows="5" cols="40" name="contents"
										class="form-control"></textarea></td>
							</tr>

							<tr>
								<td colspan="2" class="text-center"><input type="submit"
									value="게시글 수정하기" class="btn btn-success">
									<button type="button" class="btn btn-warning"
										onclick="location.href='Main'">취소</button></td>
							</tr>

						</table>

					</form>

				</div>
			</div>
			<!-- col-sm-12 -->
		</div>
		<!-- row -->
	</div>
	<!-- container end-->


</body>
</html>