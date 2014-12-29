<%@ include file="/WEB-INF/views/includes/taglibs.jsp" %>
<c:set var="pageTitle" value="Amity Login"/>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>
<tr><td valign="middle">

<table style="width:300px;height:360px;background-color:white;" align="center" cellspacing="0" cellpadding="20" >
	<tr height="95%">
		<td valign="top" align="center" class="content">

			<spring:hasBindErrors name="loginForm">
			<c:forEach items="${errors.fieldErrors}" var="error">
			<li class="errors"><fmt:message key="${error.codes[0]}"/></li>
			</c:forEach>
			<br/>
			</spring:hasBindErrors>

			<table class="loginSelection">
				<tr>
					<td align="center">
						<form id="loginForm" action="<c:url value='/j_spring_security_check'/>" method="post">

							<h3>Blueprint .02</h3>

							<hr class="amity" width="100%" size="1">

							<div class="form-group has-feedback">
								<input type="text" id="j_username" name="j_username" data-label="username-label"
									   data-required="required" placeholder="email" class="form-control input-sm"/>
								<span class="form-control-feedback fui-check"></span>
							</div>
							<div class="form-group has-feedback">
								<input type="password" id="j_password" name="j_password" data-label="password-label"
									   data-required="required" placeholder="password" class="form-control input-sm "/>
								<span class="form-control-feedback fui-check"></span>
							</div>

							<hr class="amity" width="100%" size="1">

							<c:if test="${not empty loginAttempts and loginAttempts >= 3}">
								<a class="forgotPasswordLink" href="<c:url value='/user/password/request.bp'/>">Forgot your password?</a>
							</c:if>

							<input id="login" type="submit" value="Login" class="btn btn-default btn-wide input-sm"
								   style="width:150px" onclick="this.form.submit()" /> <br/>

							<a href="<c:url value='/signup/simple.bp'/>" style="font-size:12px">or signup</a>

						</form>

						<br/><br/><br/><br/>

					</td>
				</tr>
			</table>

	</tr>
</table>
</td></tr>
<%@ include file="/WEB-INF/views/includes/footer.jsp" %>