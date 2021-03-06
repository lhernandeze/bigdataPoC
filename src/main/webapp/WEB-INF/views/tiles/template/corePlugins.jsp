<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/respond.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->

<!-- BEGIN APP PLUGINS -->
<script src="${pageContext.request.contextPath}/static/js/taskAtHand.js" type="text/javascript"></script>
<!-- BEGIN APP PLUGINS -->

<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/amcharts/amcharts/amcharts.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/amcharts/amcharts/serial.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/amcharts/amcharts/pie.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/amcharts/amcharts/radar.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/amcharts/amcharts/themes/light.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/amcharts/amcharts/themes/patterns.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/amcharts/amcharts/themes/chalk.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/amcharts/ammap/ammap.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/amcharts/ammap/maps/js/worldLow.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/global/plugins/amcharts/amstockcharts/amstock.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="${pageContext.request.contextPath}/static/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/admin/layout3/scripts/layout.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/admin/layout3/scripts/demo.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/assets/admin/pages/scripts/charts-amcharts.js"></script>
<script>
jQuery(document).ready(function() {       
   // initiate layout and plugins
   Metronic.init(); // init metronic core components
   Layout.init(); // init current layout
   Demo.init(); // init demo features
   ChartsAmcharts.init();
});
</script>
<!-- END PAGE LEVEL SCRIPTS -->

