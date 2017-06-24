
		<div class="container">
			<!-- BEGIN LOGO -->
			<div class="page-logo">
				<a href="${pageContext.request.contextPath}"><img src="${pageContext.request.contextPath}/static/img/logo_micro.png" alt="Arquitectura"></a>
			</div>
			<!-- END LOGO -->
			
			<div class="page-logo" align="center">
				<h4 align="center">ARQUITECTURA TÉCNICA<br>PoC Portal
				</h4>
			</div>
						
			<div class="page-logo" align="right">
				<!-- <a href="${pageContext.request.contextPath}"><img src="${pageContext.request.contextPath}/static/img/Duke3D.png" alt="PoC"></a> -->
			</div>
			
			
			<!-- BEGIN RESPONSIVE MENU TOGGLER -->
			<a href="javascript:;" class="menu-toggler"></a>
			<!-- END RESPONSIVE MENU TOGGLER -->
			<!-- BEGIN TOP NAVIGATION MENU -->
			<div class="top-menu">
				<ul class="nav navbar-nav pull-right">
					<!-- BEGIN NOTIFICATION DROPDOWN -->
					<!-- END NOTIFICATION DROPDOWN -->
					<!-- BEGIN TODO DROPDOWN -->
					
					<!-- END TODO DROPDOWN -->
					<li class="droddown dropdown-separator">
						<span class="separator"></span>
					</li>
					<!-- BEGIN INBOX DROPDOWN -->
					
					<!-- END INBOX DROPDOWN -->
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<li class="dropdown dropdown-user dropdown-dark">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
						<img alt="" class="img-circle" src="${pageContext.request.contextPath}/static/assets/admin/layout3/img/avatar.png">
						<span class="username username-hide-mobile">
							${pageContext.request.userPrincipal.name}
						</span>
						</a>
						<ul class="dropdown-menu dropdown-menu-default">
							<li>
								<a href="${pageContext.request.contextPath}">
								<i class="icon-user"></i> Perfil de ${pageContext.request.userPrincipal.name} </a>
							</li>
							<li class="divider">
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/extra_lock.html">
								<i class="icon-lock"></i> Bloquear pantalla </a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/login.html">
								<i class="icon-key"></i> Salir </a>
							</li>
						</ul>
					</li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
			</div>
			<!-- END TOP NAVIGATION MENU -->
		</div>
		