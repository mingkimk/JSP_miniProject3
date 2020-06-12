<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<!--Made with love by Mutiullah Samim -->

<!--Bootsrap 4 CDN-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<!--Fontawesome CDN-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">

<!--Custom styles-->
<link rel="stylesheet" type="text/css" href="styles.css">
<style>
#nav1 a:hover {
	color: white;
}

#nav1 a:link {
	color: white;
	text-decoration: none;
}

#nav1 a:visited {
	color: white;
}
</style>
</head>
<body>
	<div id="nav1">
		<ul>
			<c:choose>
				<c:when test="${sessionScope.login==null}">
					<li><a href="Login2.jsp"> 로그인 </a></li>
					<li><a href="signup2.jsp"> 회원가입 </a></li>
				</c:when>
				<c:when test="${sessionScope.login!=null}">
					<li><a href="Login.jsp"> ${sessionScope.login} 님 환영합니다!!!
					</a></li>
					<li><a href="logout"> 로그아웃 </a></li>
				</c:when>
			</c:choose>
		</ul>
	</div>
	<div class="container">
		<div class="d-flex justify-content-center h-100">
			<div class="ddd2">
				<div class="card-header">
					<span><h3>게시글 목록</h3></span><span>
						<tr>

						</tr>
					</span>

				</div>
				<div class="card-body">
						<table>
							<tr>
								<th align="center" width="70px">NO</th>
								<th align="center" width="100px">category</th>

								<th>제목</th>
								<th align="center" width="100px">작성자</th>
								<th align="center" width="100px">날짜</th>
								<th align="center" width="70px">수정</th>
								<th align="center" width="70px">삭제</th>
							</tr>
							<c:forEach items="${uList}" var="i">
								<tr>
									<td>${i.no}</td>
									<td>${i.interest}</td>
									<c:choose>
										<c:when test="${sessionScope.login==null}">
											<td>${i.title}</td>
										</c:when>
										<c:when test="${sessionScope.login!=null}">
											<td><a href=Detail?no=${i.no}>${i.title}</a></td>
										</c:when>
									</c:choose>

									<td>${i.id}</td>
									<td>${i.dt}</td>
									<c:choose>
										<c:when test="${sessionScope.login==i.id}">
											<td>
												<form action="BoardMod.jsp" method="post">
													<input type="hidden" name="no" value="${i.no}"> <input
														type="hidden" name="title" value="${i.title}"><input
														type="submit" value="수정">
												</form>
											</td>

											<td>
												<form action="Writedel" method="post">
													<input type="hidden" name="no" value="${i.no}"> <input
														type="submit"  value="삭제">
												</form>
											</td>

										</c:when>

										<c:when test="${sessionScope.login!=i.id}">
											<td>수정</td>
											<td>삭제</td>
										</c:when>
									</c:choose>
								</tr>
							</c:forEach>

						</table>
						<c:choose>
							<c:when test="${sessionScope.login!=null}">
								<span id="wr">
									<tr>
										<td colspan="2" class="text-center">
											<button type="button" class="btn btn-primary"
												onclick="location.href='BoardWrite.jsp'">게시글 쓰기</button>
										</td>
									</tr>
								</span>
							</c:when>
						</c:choose>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
>
