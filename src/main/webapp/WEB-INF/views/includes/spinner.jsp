<style>
.spinnerBLock {
	
}

.spinner {
	background-color:#4970fd;
	border:1px solid #000000;
	float:left;
	height:15px;
	margin-left:5px;
	width:4px;
	-webkit-animation-name:bounceG;
	-webkit-animation-duration:1.3s;
	-webkit-animation-iteration-count:infinite;
	-webkit-animation-direction:linear;
	-webkit-transform:scale(0.91);
	-moz-animation-name:bounceG;
	-moz-animation-duration:1.3s;
	-moz-animation-iteration-count:infinite;
	-moz-animation-direction:linear;
	-moz-transform:scale(0.91);
	-o-animation-name:bounceG;
	-o-animation-duration:1.3s;
	-o-animation-iteration-count:infinite;
	-o-animation-direction:linear;
	-o-transform:scale(0.91);
	-ms-animation-name:bounceG;
	-ms-animation-duration:1.3s;
	-ms-animation-iteration-count:infinite;
	-ms-animation-direction:linear;
	-ms-transform:scale(0.91);
	opacity:0.1;
}

#sBlock1 {
	-webkit-animation-delay:0.39s;
	-moz-animation-delay:0.39s;
	-o-animation-delay:0.39s;
	-ms-animation-delay:0.39s;
}

#sBlock2 {
	-webkit-animation-delay:0.52s;
	-moz-animation-delay:0.52s;
	-o-animation-delay:0.52s;
	-ms-animation-delay:0.52s;
}

#sBlock3 {
	-webkit-animation-delay:0.65s;
	-moz-animation-delay:0.65s;
	-o-animation-delay:0.65s;
	-ms-animation-delay:0.65s;
}

@-webkit-keyframes bounceG {
	0% {
		-webkit-transform:scale(1.2);
		opacity:1
	}
	100% {
		-webkit-transform:scale(0.7);
		opacity:0.1
	}
}

@-moz-keyframes bounceG{
	0% {
		-moz-transform:scale(1.2);
		opacity:1
	}
	100% {
		-moz-transform:scale(0.7);
		opacity:0.1
	}
}

@-o-keyframes bounceG{
	0%	{
		-o-transform:scale(1.2);
		opacity:1
	}

	100% {
		-o-transform:scale(0.7);
		opacity:0.1
	}
}

@-ms-keyframes bounceG {
	0% {
		-ms-transform:scale(1.2);
		opacity:1
	}

	100% {
		-ms-transform:scale(0.7);
		opacity:0.1
	}
}
</style>

<div id="spinnerBLock">
	<div id="sblock1" class="spinner"></div>
	<div id="sblock2" class="spinner"></div>
	<div id="sblock3" class="spinner"></div>
</div>