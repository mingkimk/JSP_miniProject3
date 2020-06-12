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
.col-sm-6{
	margin-top: auto;
	margin-bottom: auto;
	background-color: rgba(255, 255, 255, 0.70) !important;
}
</style>
</head>
<body>
<br>
<br>
<br>

	<div class="container">
		<div class="row">
			<div class="col-sm-12 text-center">
				<div class="col-sm-3"></div>

				<div class="col-sm-6">
					<h2>게시글 쓰기</h2>
					<form action="Write" method="post">
						<table class="table table-boardered">

							<tr>
								<th>제목</th>
								<td><input type="text" class="form-control"
									name="title" placeholder="제목을 입력해주세요"></td>
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
								<td colspan="2"><input type="submit"
									class="btn btn-primary" value="저장"> <input type="reset"
									class="btn btn-danger" value="취소"></td>
							</tr>




						</table>
					</form>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
