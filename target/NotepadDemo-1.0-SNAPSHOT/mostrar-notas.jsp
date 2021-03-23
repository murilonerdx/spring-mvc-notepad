<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: coelh
  Date: 22/03/2021
  Time: 17:36
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
    <style><%@include file="WEB-INF/assets/css/NZButtonSaveClose.css"%></style>
    <style><%@include file="WEB-INF/assets/css/Lista-Productos-Canito.css"%></style>

</head>

<body>
<div id="sidebar-wrapper">
    <ul class="sidebar-nav">
        <li class="sidebar-brand"> <a href="${pageContext.request.contextPath}/home.jsp">Inicio</a></li>
        <li> </li>
        <li> <a href="#">Criar notas</a></li>
        <li> <a href="#">Minhas notas</a></li>
    </ul>
</div>
<div>
    <div class="container">
        <div class="row text-center d-flex justify-content-center align-items-end justify-content-xxl-center align-items-xxl-center">
            <div class="col-md-4 text-center d-flex justify-content-center align-items-end justify-content-xxl-center align-items-xxl-center">
                <h2 class="text-center d-flex justify-content-center align-items-end justify-content-xxl-center align-items-xxl-center" style="width: 343px;">SUAS NOTAS</h2>
            </div>
        </div>
        <div class="row text-center d-flex justify-content-center align-items-end justify-content-lg-end align-items-lg-start justify-content-xxl-center align-items-xxl-center">
            <div class="col-md-12 text-center d-flex justify-content-center align-items-end justify-content-xxl-center align-items-xxl-center">
                <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Titulo</th>
                    <th>Assunto</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach items="${notas}" var="item">
                        <tr>
                            <td><c:out value="${item.id}" /></td>
                            <td><c:out value="${item.titulo}" /></td>
                            <td><c:out value="${item.assunto}" /></td>
                            <td><button type="button" class="btn btn-danger"><i class="fas fa-trash-alt d-xl-flex justify-content-xl-center align-items-xl-center"></i></button>
                                <button type="button" class="btn btn-warning"><i class="fas fa-pencil-alt d-xl-flex justify-content-xl-center align-items-xl-center"></i></button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            </div>
        </div>
    </div>
</div>
<script><%@include file="WEB-INF/assets/bootstrap/js/bootstrap.min.js"%></script>
<script><%@include file="WEB-INF/assets/js/Sidebar-Menu.js"%></script>
</body>

</html>