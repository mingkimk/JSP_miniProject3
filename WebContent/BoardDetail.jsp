
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
#gg{
	width: 80%;
	margin: auto;
	background-color: rgba(255, 255, 255, 0.70) !important;
}
.table{
width: 100%;
}
</style>
</head>
<body>
<br>
<br>
<br>
<div id = "gg">
	<div class="row">
		<div class="col-xs-3 col-md-3"></div>
		<div class="col-xs-6 col-md-6">
			<h2 class="text-center">게시글 자세히 보기</h2>
			<div class="table table-responsive">
				<table class="table">
					<tr>

						<th class="success">글번호</th>
						<td>${detail.no }</td>
						<th class="success">조회수</th>
						<td>${detail.cnt}</td>
					</tr>


					<tr>
						<th class="success">작성자</th>
						<td>${detail.id }</td>
						<th class="success">작성일</th>
						<td>${detail.dt }</td>
					</tr>
					<tr>
						<th class="success">제목</th>
						<td colspan="3">${detail.title }</td>
					</tr>

					<tr>
						<th class="success">글 내용</th>
						<td colspan="3">${detail.contents}</td>
					</tr>

					<tr>
						<td colspan="9" class="text-center"><input type="button"
							class="btn btn-primary" value="목록보기"
							onclick="location.href='Main'">
					</tr>



				</table>
			</div>

		</div>
	</div>
</div>



</body>
</html>