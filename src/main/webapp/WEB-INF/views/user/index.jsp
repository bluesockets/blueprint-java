<%@ include file="/WEB-INF/views/includes/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Blueprint Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Loading Bootstrap -->
	<link href="<c:url value='/flat-ui/vendor/bootstrap.min.css'/>" rel="stylesheet">

	<!-- Loading Flat UI -->
	<link href="<c:url value='/flat-ui/flat-ui.min.css'/>" rel="stylesheet">

	<link rel="shortcut icon" href="/images/favicon.ico">

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
	<!--[if lt IE 9]>
	<script src="<c:url value='/flat-ui/vendor/html5shiv.js'/>"></script>
	<script src="<c:url value='/flat-ui/vendor/respond.min.js'/>"></script>
	<![endif]-->

</head>
<body>
<div class="container">

	<br><br><br><br>

<table style="width:300px;height:360px;background-color:white;" align="center" cellspacing="0" cellpadding="20" >
	<tr height="95%">
		<td valign="top" align="center" class="content">

			<spring:hasBindErrors name="loginForm">
			<c:forEach items="${errors.fieldErrors}" var="error">
			<li class="errors"><fmt:message key="${error.codes[1]}"/></li>
			</c:forEach>
			<c:forEach items="${errors.globalErrors}" var="error">
			<li class="errors"><fmt:message key="${error.codes[1]}"/></li>
			</c:forEach>
			<br/>
			</spring:hasBindErrors>
			<c:if test="${not empty loginAttempts}">
			<li class="errors">Login Error. ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</li><br/>
			</c:if>
			<c:if test="${not empty resetPasswordMsg}">
			<li class="errors"><c:out value="${resetPasswordMsg}"/></li><br/>
			</c:if>

			<table class="loginSelection">
				<tr>
					<td align="center">
						<form id="loginForm" action="<c:url value='/'/>j_spring_security_check" method="post">

							<h2>Blueprint</h2>


							<hr width="100%" size="1">

							<div class="form-group has-feedback">
								<input type="text" id="j_username" name="j_username" data-label="username-label" data-required="required" placeholder="username" class="form-control input-sm"/>
								<span class="form-control-feedback fui-check"></span>
							</div>
							<div class="form-group has-feedback">
								<input type="password" id="j_password" name="j_password" data-label="password-label" data-required="required" placeholder="password" class="form-control input-sm "/>
								<span class="form-control-feedback fui-check"></span>
							</div>

							<label for="remember-me" class="checkbox">
								<input id="remember-me" type="checkbox" data-toggle="checkbox" name="_spring_security_remember_me"/>
								Remember me on this computer.
							</label>

							<c:if test="${not empty loginAttempts and loginAttempts >= 3}">
								<a class="forgotPasswordLink" href="<c:url value='/user/password/request.bp'/>">Forgot your password?</a>
							</c:if>

							<div>&nbsp;</div>

							<input id="login" type="submit" value="Login" class="btn btn-default btn-wide" style="width:150px" onclick="this.form.submit()" />

						</form>

					</td>
				</tr>
			</table>

	</tr>
</table>

</div>

<!-- jQuery (necessary for Flat UI's JavaScript plugins) -->
<script src="<c:url value='/flat-ui/vendor/jquery.min.js'/>"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<c:url value='/flat-ui/vendor/video.js'/>"></script>
<script src="<c:url value='/flat-ui/flat-ui.min.js'/>"></script>

<script>
	$(document).ready(function (){
		$('[data-toggle="checkbox"]').radiocheck();
	});
</script>

</body>
</html>