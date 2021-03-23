<%--
  Created by IntelliJ IDEA.
  User: coelh
  Date: 22/03/2021
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Notepad</title>
    <style><%@include file="WEB-INF/assets/bootstrap/css/bootstrap.min.css"%></style>
    <style><%@include file="WEB-INF/assets/fonts/fontawesome-all.min.css"%></style>
    <style><%@include file="WEB-INF/assets/fonts/font-awesome.min.css"%></style>
    <style><%@include file="WEB-INF/assets/css/styles.css"%></style>
    <style><%@include file="WEB-INF/assets/fonts/fontawesome5-overrides.min.css"%></style>
    <style><%@include file="WEB-INF/assets/css/Sidebar-Menu-1.css"%></style>
    <style><%@include file="WEB-INF/assets/css/Sidebar-Menu.css"%></style>
</head>

<body>
<div id="wrapper">
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <li class="sidebar-brand"> <a href="#">Inicio</a></li>
            <li> </li>
            <li> <a href="${pageContext.request.contextPath}/criar-notas.jsp">Criar notas</a></li>
            <li> <a href="${pageContext.request.contextPath}/mostrar-notas">Minhas notas</a></li>
        </ul>
    </div>
    <div class="page-content-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div>
                        <h1>Notepad homework</h1>
                    </div>
                    <p></p>
                </div>
            </div>
        </div>
    </div>
</div>

<script><%@include file="WEB-INF/assets/bootstrap/js/bootstrap.min.js"%></script>
<script><%@include file="WEB-INF/assets/js/Sidebar-Menu.js"%></script>

</body>

</html>
