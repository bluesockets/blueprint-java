<%@ include file="/WEB-INF/views/includes/taglibs.jsp" %>
<%@page isErrorPage="true" %>
<html>
<head>
	<link type="text/css" rel="stylesheet" href="//fonts.googleapis.com/css?family=PT+Sans" />
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/errors.css'/>" />
	<link rel="shortcut icon" href="/img/favicon.ico">
</head>
<body>
<div class="header">500.</div><br/> 
<div class="text">
	Something went wrong.<br/>
	<pre style="font-size: 13px;">
		<jsp:scriptlet>
			exception.printStackTrace(new java.io.PrintWriter(out));
		</jsp:scriptlet>
	</pre>
</div>
</body>
</html>