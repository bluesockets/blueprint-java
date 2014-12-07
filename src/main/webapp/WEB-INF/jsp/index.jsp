<table style="width:500px;height:360px;background-color:white;border:1px solid black" align="center" cellspacing="0" cellpadding="20" >
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
			<c:if test="${not empty loginAttemps}">
			<li class="errors">Login Error. ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</li><br/>
			</c:if>
			<c:if test="${not empty resetPasswordMsg}">
			<li class="errors"><c:out value="${resetPasswordMsg}"/></li><br/>
			</c:if>

			<table class="loginSelection" style="width:100%;">
				<tr>
					<td align="center">
						<form id="loginForm" action="<c:url value='/'/>j_spring_security_check" method="post">

							<div class="loginFieldDiv">
								<span id="username-label" class="inputLabel">Username</span>
								<br/>
								<input type="text" id="j_username" name="j_username" style="width:100%" data-label="username-label" data-required="required"/>
							</div>

							<div>&nbsp;</div>

							<div class="loginFieldDiv">
								<span id="password-label" class="inputLabel">Password</span>
								<br/>
								<input type="password" id="j_password" name="j_password" style="width:100%" data-label="password-label" data-required="required"/>
							</div>

							<div>&nbsp;</div>

							<div class="loginFieldDiv">

								<input id="remember-me" type="checkbox" class="css-checkbox med" name="_spring_security_remember_me"/>
								<label for="remember-me" class="css-label med elegant checkboxText">Remember me on this computer.</label>

								<c:if test="${not empty loginAttemps and loginAttemps >= 3}">
									<a class="forgotPasswordLink" href="<c:url value='/user/password/request.sf'/>">Forgot your password?</a>

								</c:if>

							</div>

							<div>&nbsp;</div>

							<input id="login" type="submit" value="Login" class="button" onclick="this.form.submit()"/>
						</form>

						<hr width="100%" size="1">

					</td>
				</tr>
			</table>

	</tr>
</table>