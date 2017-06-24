<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
	
<!-- 
Author: eYaab Creative Software Solutions (Powereb By Wiki Luigi)
April 2015
-->

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="es">
<!--<![endif]-->

<!-- BEGIN HEAD -->
<head>
<title>
	<tiles:getAsString name="title" />
</title>
<tiles:insertAttribute name="page-head" />
</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-menu-fixed" class to set the mega menu fixed  -->
<!-- DOC: Apply "page-header-top-fixed" class to set the top menu fixed  -->
<body class="page-md">

<!-- BEGIN HEADER -->
<div class="page-header">
	<!-- BEGIN HEADER TOP -->
	<div class="page-header-top">
		<tiles:insertAttribute name="page-header-top" />
	</div>
	<!-- END HEADER TOP -->
	
	<!-- BEGIN HEADER MENU -->
	<div class="page-header-menu">
		<tiles:insertAttribute name="page-header-menu" />
	</div>
	<!-- END HEADER MENU -->
	
</div>
<!-- END HEADER -->

<!-- BEGIN PAGE CONTAINER -->
<div class="page-container">
	
	<!-- BEGIN PAGE HEAD -->
	<div class="page-head">
		<tiles:insertAttribute name="page-header" />
	</div>
	<!-- END PAGE HEAD -->
	
	<!-- BEGIN PAGE CONTENT -->
	<div class="page-content">
		<tiles:insertAttribute name="body" />
	</div>
	<!-- END PAGE CONTENT -->
	
</div>
<!-- END PAGE CONTAINER -->

<!-- BEGIN PRE-FOOTER -->
<div class="page-prefooter">
	<tiles:insertAttribute name="page-prefooter" />
</div>
<!-- END PRE-FOOTER -->

<!-- BEGIN FOOTER -->
<div class="page-footer">
	<tiles:insertAttribute name="page-footer" />
</div>
<!-- END FOOTER -->

<tiles:insertAttribute name="core-plugins" />

</body>
<!-- END BODY -->

</html>