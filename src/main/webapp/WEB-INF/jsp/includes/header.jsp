<%@ include file="/WEB-INF/jsp/includes/taglibs.jsp" %>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<title>${pageTitle}</title>
	
	<link type="image/x-icon" rel="shortcut icon"	href="<c:url value='/favicon.ico'/>" />
	
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/main.css'/>">
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/jquery-ui.css'/>">
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/jquery.alerts.css'/>">
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/checkboxes.css'/>">
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/chosen.css'/>" />
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/support.css'/>" />
	
	<link type="text/css" rel="stylesheet" href="<c:url value='/js/introjs/introjs.min-1.0.css'/>" />
	
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/notifications.css'/>" />
	
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/widgets.css'/>" /> 
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/spinner.css'/>" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/css/tablesort/style.css"/>" />
	<link type="text/css" rel="stylesheet" href="<c:url value="/css/gritter/jquery.gritter.css"/>" />
	
	<link type="text/css" rel="stylesheet" href="<c:url value='/js/jquery-te/jquery-te-1.4.0.css'/>" />
	
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/smoothness/jquery-ui-1.8.21.custom.css'/>" />
	
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/jquery.fileupload-bootstrap.css'/>" />
	<link type="text/css" rel="stylesheet" href="<c:url value='/css/jquery.fileupload-ui.css'/>" />
	
	<link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=PT+Sans" />
	
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.21/jquery-ui.min.js"></script>
	
	<script type="text/javascript" src="<c:url value='/js/introjs/intro-1.0.js'/>"></script>
	
	<script type="text/javascript" src="<c:url value='/js/jquery.gritter.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/jquery.chosen.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/jquery.maskedinput-1.3.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/jquery.cookie.js'/>"></script>	
	<script type="text/javascript" src="<c:url value='/js/jquery-alerts.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/jquery-json-2.3.min.js'/>"></script>
	
	<script type="text/javascript" src="<c:url value='/js/jquery-te/jquery-te-1.4.0.min.js'/>"></script>
	
	<script type="text/javascript" src="<c:url value='/js/jquery.fileupload.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/jquery.ui.widget.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/jquery.iframe-transport.js'/>"></script>
	
	<script type="text/javascript" src="<c:url value='/js/form2js.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/json-2.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/date.js'/>"></script>
	
	<script type="text/javascript" src="<c:url value='/js/validation.js'/>"></script>
	
	
</head>

<body class="body" onload="${bodyOnLoad}">