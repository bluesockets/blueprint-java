<tr class="amity-headerRow"><td>
<div id="amity-headerContent" class="m-aside scene_element scene_element--fadein">

    <nav class="navbar navbar-inverse" role="navigation">

        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-01">
                <span class="sr-only">Toggle navigation</span>
            </button>
            <a class="navbar-brand" href="#">Fuzzy Bear</a>
        </div>

        <div class="collapse navbar-collapse" id="navbar-collapse-01">

            <ul class="nav navbar-nav">
                <li<c:if test="${pageTitle eq 'Admin Dashboard'}"> class="active"</c:if>>
                    <a href="<c:url value='/administration/dashboard.bp'/>">Dashboard</a>
                </li>
                <li class="dropdown<c:if test="${pageTitle eq 'Manage Relationships'}"> active</c:if>">
                    <a href="#"class="dropdown-toggle" data-toggle="dropdown">
                        Relationships <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li class="divider"></li>
                        <li><a href="<c:url value='/user/relationships.bp'/>">Contacts</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Bulk Management</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Upload Contacts</a></li>
                    </ul>
                </li>
                <li<c:if test="${pageTitle eq 'Manage Communication'}"> class="active"</c:if>>
                    <a href="<c:url value='/user/medium/select.bp'/>">Communication</a>
                </li>
                <li<c:if test="${pageTitle eq 'Content Factory'}"> class="active"</c:if>>
                    <a href="<c:url value='/content/dashboard.bp'/>">Content Factory</a>
                </li>
            </ul>

            <p class="amity navbar-text navbar-right">Signed in as <a class="navbar-link" href="#"><security:authentication property="principal.username"/></a></p>

        </div><!-- /.navbar-collapse -->
    </nav><!-- /navbar -->

</div>
</td></tr>
<tr><td valign="top" class="amity-content">