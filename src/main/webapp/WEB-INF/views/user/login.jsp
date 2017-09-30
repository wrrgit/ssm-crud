<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>用户登陆</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<script type="text/javascript"
	src="${APP_PATH }/static/js/jquery-2.1.4.min.js"></script>
<link
	href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h1>用户登录</h1>
		<hr />
		<form:form action="/ssm-crud/user/loginValidate" method="post"
			commandName="user" role="form">
			<div class="form-group">
				<label for="username">username:</label> <input type="text"
					class="form-control" id="username" name="username"
					placeholder="Enter Username:" />
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="text"
					class="form-control" id="password" name="password"
					placeholder="Enter Password:" />
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary">登录</button>
			</div>
		</form:form>
	</div>
</body>
</html>