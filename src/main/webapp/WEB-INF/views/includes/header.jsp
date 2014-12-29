<%@ include file="/WEB-INF/views/includes/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="en" class="no-js amity">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>${pageTitle}</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" type="text/css" href="<c:url value='/css/amity.css'/>">

	<link rel="shortcut icon" href="/img/favicon.ico">

	<script src="<c:url value='/js/rsvp-3.0.16.min.js'/>"></script>
	<script src="<c:url value='/js/basket-0.5.1.full.min.js'/>"></script>
	<script src="<c:url value='/js/bag-0.1.3.js'/>"></script>

	<script>
	basket.require(
		{ url: '<c:url value='/js/jquery-1.11.1.js'/>' },
		{ url: '<c:url value='/js/jquery-te/jquery-te-1.4.0.min.js'/>' },
		{ url: '<c:url value='/js/jquery-smoothstate.0.5.2.js'/>' },
		{ url: '<c:url value='/js/jquery-smoothstate-functions.js'/>' },
		{ url: '<c:url value='/js/jquery-localstorage.1.7.3.min.js'/>' },
		{ url: '<c:url value='/js/jquery-te/jquery-te-1.4.0.min.js'/>' },
		{ url: '<c:url value='/flat-ui/flat-ui.min.js'/>' },
		{ url: '<c:url value='/flat-ui/vendor/html5shiv.js'/>' },
		{ url: '<c:url value='/flat-ui/vendor/respond.min.js'/>' }
	);

	var bag = new window.Bag({stores:['localstorage']});
	bag.require([
		'<c:url value='/flat-ui/vendor/bootstrap.min.css'/>',
		'<c:url value='/flat-ui/flat-ui.min.css'/>',
		'<c:url value='/js/jquery-te/jquery-te-1.4.0.css'/>',
		'<c:url value='/css/pageTransitions.css'/>',
		'<c:url value='/css/keyframes.css'/>'
	], function (err) {
		if (err) {
			console.log('loading error: ', err);
			return
		}
	})
	function loadScripts() {
		$('[data-toggle="checkbox"]').radiocheck();
		$('[data-toggle="radio"]').radiocheck();
		$('select').select2({dropdownCssClass: 'dropdown-inverse'});
		if ($('[data-toggle="switch"]').length) {
			$('[data-toggle="switch"]').bootstrapSwitch();
		}
		// Focus state for append/prepend inputs
		$('.input-group').on('focus', '.form-control', function () {
			$(this).closest('.input-group, .form-group').addClass('focus');
		}).on('blur', '.form-control', function () {
			$(this).closest('.input-group, .form-group').removeClass('focus');
		});
	}
	</script>

</head>

<body class="amity" onload="javascript:loadScripts();">
<table style="height:100%;width:100%" border="0">