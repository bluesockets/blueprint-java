<%@ include file="/WEB-INF/views/includes/taglibs.jsp" %>
<c:set var="pageTitle" value="Amity Login"/>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>
<tr><td valign="middle">

    <table style="width:300px;height:360px;background-color:white;" align="center" cellspacing="0" cellpadding="20" >
        <tr height="95%">
            <td valign="top" align="center" class="content">

                <table class="loginSelection" style="width:500px">
                    <tr>
                        <td align="center">

                            <h3>Thanks for registering!</h3>

                            <hr class="amity" width="100%" size="1">

                           Continue and <a href="<c:url value='/administration/personalization.bp'/>">set up your personalization...</a>

                            <hr class="amity" width="100%" size="1">

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