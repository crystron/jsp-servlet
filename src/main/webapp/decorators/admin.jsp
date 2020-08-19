<%@ page import="model.TaiKhoan" %>
<%@ page import="model.KhachHang" %>
<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="/assets/admin/header.jsp"%>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
</head>
<body>
<div id="wrapper">
    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/admin">Hệ thống quản trị web</a>
        </div>
        <!-- /.navbar-header -->
        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li>
                        <a href="#"><i class="fa fa-user fa-fw"></i>Thông tin tài khoản</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-gear fa-fw"></i> Cài đặt</a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="/thoat"><i class="fa fa-sign-out fa-fw"></i>Đăng xuất</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links -->
        <div class="navbar-default sidebar" role="navigation">
            <%@include file="/assets/admin/menuLeft.jsp"%>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
    </nav>
    <div id="page-wrapper">
        <dec:body/>
    </div>
    <!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->
<!-- jQuery -->
    <script src="<c:url value='/assets/admin/vendor/jquery/jquery.min.js'/>"> </script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value='/assets/admin/vendor/bootstrap/js/bootstrap.min.js'/>"></script>
    <!-- Metis Menu Plugin JavaScript -->
    <script src="<c:url value = '/assets/admin/vendor/metisMenu/metisMenu.min.js'/>"></script>
    <!-- Morris Charts JavaScript -->
    <script src="<c:url value = '/assets/admin/vendor/raphael/raphael.min.js'/>"></script>
    <script src="<c:url value = '/assets/admin/vendor/morrisjs/morris.min.js'/>"></script>
    <script src="<c:url value = '/assets/admin/data/morris-data.js'/>"></script>
    <!-- Custom Theme JavaScript -->
    <script src="<c:url value = '/assets/admin/dist/js/sb-admin-2.js'/>"></script>
</body>
</html>