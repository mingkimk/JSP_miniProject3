<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="styles.css">
<style>
#idc{
margin-top: 3px;
}
</style>
<script type="text/javascript">
function idCheck(){
	if(document.all.id.value ==""){
		alert('아이디를 입력해주세요');
		document.id.value.focus();
		return;
	}
	var url ="idCheck?id="+document.all.id.value;
	window.open(url,"_blank_1",
			"toolbar=no,menubar=no,scrollbars=yes,resizable=no,width=450,height=200")
}
function joinchk(){
	if(document.all.reid.value.length == 0){
		alert("중복체크를 해주세요");
		all.id.focus();
		return false;
	}
	return true;
}
</script>
</head>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="ddd">
			<div class="card-header">
				<h3>Sign Up</h3>

			</div>
			<div class="card-body">
				<form action="Join" name = "all" method="post">
					<table class="table table-boardered">
							<tr>
								<th>아이디</th>
								<td><input type="text" class="form-control" name="id">
									<input type ="hidden" name= "reid">
									<input type = "button" value = "중복확인" onclick ="idCheck()" id = "idc"> </td>
							</tr>
							<tr>
								<th>패스워드</th>
								<td><input type="password" class="form-control"
									name="pwd" placeholder="비밀번호는 영문만 넣어주세요"></td>
							</tr>

							<tr>
								<th>닉네임</th>
								<td><input type="text" class="form-control" name="name"></td>
							</tr>

							<tr>
								<th>나이</th>
								<td><input type= "text" class="form-control" name="age"></td>
							</tr>

							<tr>
								<th>성별</th>
								<td align="left"><input type="radio" name="gender"
									value="1">남자 &nbsp;&nbsp; <input type="radio"
									name="gender" value="2">여자 &nbsp;&nbsp;</td>
							</tr>
							<tr>
								<th>관심분야</th>
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
								<th>하고 싶은 말</th>
								<td><textarea rows="5" cols="40" name="free"
										class="form-control"></textarea></td>
							</tr>


							<tr>
								<td colspan="2"><input type="submit"
									class="btn btn-primary" value="가입" onclick="return joinchk()"> <input type="reset"
									class="btn btn-danger" value="취소"></td>
							</tr>


						</table>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Don't have an account?<a href="#">Sign Up</a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="#">Forgot your password?</a>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>>