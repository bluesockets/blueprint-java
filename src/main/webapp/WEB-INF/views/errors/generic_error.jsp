<%@ include file="/WEB-INF/views/includes/taglibs.jsp" %>
<%@page isErrorPage="true" %>
<html>
<head>
	<link type="text/css" rel="stylesheet" href="//fonts.googleapis.com/css?family=PT+Sans" />
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/errors.css'/>" />
	<link rel="shortcut icon" href="/img/favicon.ico">
</head>
<body>
<div class="header">Error.</div><br/> 
<div class="text">
	${error}<br/>
	<pre style="font-size: 13px;">
		<jsp:scriptlet>
			exception.printStackTrace(new java.io.PrintWriter(out));
		</jsp:scriptlet>
	</pre>
</div>
</body>
</html>