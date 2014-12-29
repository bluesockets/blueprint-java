<%@ include file="/WEB-INF/views/includes/taglibs.jsp" %>
<c:set var="pageTitle" value="Amity Login"/>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>
<tr><td valign="middle">

    <table style="width:300px;height:360px;background-color:white;" align="center" cellspacing="0" cellpadding="20" >
        <tr height="95%">
            <td valign="top" align="center" class="content">

                <spring:hasBindErrors name="user">
                    <c:forEach items="${errors.fieldErrors}" var="error">
                        <li class="errors"><fmt:message key="${error.codes[0]}"/></li>
                    </c:forEach>
                    <br/>
                </spring:hasBindErrors>

                <table class="loginSelection">
                    <tr>
                        <td align="center">
                            <form id="loginForm" action="<c:url value='/signup/simple/submit.bp'/>" method="post">

                                <h3>Signup</h3>

                                <hr class="amity" width="100%" size="1">

                                <div class="form-group has-feedback">
                                    <input type="text" name="userName" data-label="username-label"
                                           data-required="required" placeholder="email" class="form-control input-sm"/>
                                    <span class="form-control-feedback fui-check"></span>
                                </div>
                                <div class="form-group has-feedback">
                                    <input type="password" name="password" data-label="password-label"
                                           data-required="required" placeholder="password" class="form-control input-sm "/>
                                    <span class="form-control-feedback fui-check"></span>
                                </div>
                                <div class="form-group has-feedback">
                                    <input type="password" name="passwordConfirm" data-label="password-label"
                                           data-required="required" placeholder="password confirm" class="form-control input-sm "/>
                                    <span class="form-control-feedback fui-check"></span>
                                </div>

                                <hr class="amity" width="100%" size="1">

                                <input id="signup" type="submit" value="Signup" class="btn btn-default btn-wide input-sm"
                                       style="width:150px" onclick="this.form.submit()" />

                            </form>

                            <br/>

                            <div style="font-size: 14px">An email will be sent to you with a confirmation link.</div>

                            <br/><br/><br/><br/>

                        </td>
                    </tr>
                </table>

            </td>
        </tr>
    </table>

</tr>
</table>
</td></tr>
<%@ include file="/WEB-INF/views/includes/footer.jsp" %>