<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ include file="../res/taglibs.jsp" %>

<!-- #section:basics/sidebar -->
<div id="sidebar" class="sidebar responsive">
	<script type="text/javascript">
		try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
	</script>
	
    <ul class="nav nav-list">
		<li class="">
			<a data-url="dashboard" href="index#dashboard">
				<i class="menu-icon fa fa-desktop"></i>
				<span class="menu-text">系统首页</span>
			</a>
			<b class="arrow"></b>
		</li>
		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon glyphicon glyphicon-adjust"></i>
				<span class="menu-text">示例中心</span>
				<b class="arrow fa fa-angle-down"></b>
			</a>
			<b class="arrow"></b>
			<ul class="submenu">
				<li class="">
					<a data-url="userMng" href="index#userMng">
						<i class="menu-icon fa fa-caret-right"></i>
						用户管理
					</a>
					<b class="arrow"></b>
				</li>
			</ul>
		</li>
	</ul> <!-- /.nav-list -->
	
	<%-- 
	<ul class="nav nav-list">
        <c:forEach items="${menus}" var="menu">
            <c:choose>
                <c:when test="${empty menu.nodes}">
                    <li>
                        <a data-url="${menu.url}" href="index#${menu.url}">
	                        <i class="menu-icon ${menu.iconClass}"></i>
	                        <span class="menu-text">${menu.name}</span>
	                    </a>
	                    <b class="arrow"></b>
	                </li>
                </c:when>
                <c:otherwise>
                    <li>
	                    <a href="#" class="dropdown-toggle">
	                        <i class="menu-icon ${menu.iconClass}"></i>
	                        <span class="menu-text">${menu.name}</span>
			                <b class="arrow fa fa-angle-down"></b>
			            </a>
			            <b class="arrow"></b>
			            <ul class="submenu">
	                        <c:forEach items="${menu.nodes}" var="child">
	                            <li>
	                                <a data-url="${child.url}" href="index#${child.url}">
	                                    <i class="menu-icon ${child.iconClass}"></i>
	                                    <span class="menu-text">${child.name}</span>
	                                </a>
	                                <b class="arrow"></b>
	                            </li>
	                        </c:forEach>
			            </ul>
		            </li>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </ul>--%>

	<!-- #section:basics/sidebar.layout.minimize -->
	<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
		<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
	</div>

	<!-- /section:basics/sidebar.layout.minimize -->
	<script type="text/javascript">
		try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
	</script>
</div>