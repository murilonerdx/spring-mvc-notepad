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
    <style rel="stylesheet"><%@include file="WEB-INF/assets/bootstrap/css/bootstrap.min.css"%></style>
    <style rel="stylesheet"><%@include file="WEB-INF/assets/fonts/fontawesome-all.min.css"%></style>
    <style rel="stylesheet"><%@include file="WEB-INF/assets/fonts/font-awesome.min.css"%></style>
    <style rel="stylesheet"><%@include file="WEB-INF/assets/fonts/fontawesome5-overrides.min.css"%></style>
    <style rel="stylesheet"><%@include file="WEB-INF/assets/css/NZButtonSaveClose.css"%></style>
    <style rel="stylesheet"><%@include file="WEB-INF/assets/css/markdownit-edit-1.css"%></style>
    <style rel="stylesheet"><%@include file="WEB-INF/assets/css/markdownit-edit.css"%></style>
    <style rel="stylesheet"><%@include file="WEB-INF/assets/css/NZButtonSaveClose.css"%></style>
    <style rel="stylesheet"><%@include file="WEB-INF/assets/css/Sidebar-Menu-1.css"%></style>
    <style rel="stylesheet"><%@include file="WEB-INF/assets/css/Sidebar-Menu.css"%></style>
    <style rel="stylesheet"><%@include file="WEB-INF/assets/css/styles.css"%></style>

</head>

<body>
<div class="d-lg-flex justify-content-lg-end" id="sidebar-wrapper">
    <ul class="sidebar-nav">
        <li class="sidebar-brand"> <a href="${pageContext.request.contextPath}/home.jsp">Inicio</a></li>
        <li> </li>
        <li> <a href="#">Criar notas</a></li>
        <li> <a href="${pageContext.request.contextPath}/mostrar-notas">Minhas notas</a></li>
    </ul>
</div>
<div class="d-flex d-lg-flex justify-content-lg-center align-items-lg-start">
    <div class="row text-start">
        <div class="col">
            <form method="post" action="criar-notas">
            <section class="markdown-panel markdownit">
                <div class="mark-header">

                    <div class="col-md-12">
                        <div class="btn-group" role="group"><button class="btn btn-primary border rounded-0 d-lg-flex" type="submit" style="margin-right: 3px;background-color: #35aa47;">Salvar</button><a href="${pageContext.request.contextPath}/mostrar-notas" class="btn btn-primary" type="button" style="background-color: #f0f0f0;color: #0b0b0b;">Mostrar notas</a></div>
                    </div>
                </div>
                <div class="row mark-panel">
                    <div class="col edit-inner">
                        <textarea name="textTitulo" class="d-inline float-start d-lg-flex justify-content-lg-start mark-title" id="mark_title" placeholder="Coloque o titulo" required></textarea>
                        <textarea name="textAssunto" class="d-inline float-start d-lg-flex justify-content-md-start mark-header" placeholder="Coloque o assunto" required></textarea>
                        <textarea name="textCampo" class="form-control-lg mark-edit" id="mark_edit" placeholder="Digite o seu texto" required></textarea></div>
                </div>
            </section>
            </form>
        </div>
    </div>
</div>
<script src="WEB-INF/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="WEB-INF/assets/js/markdownit-edit-1.js"></script>
<script src="WEB-INF/assets/js/markdownit-edit-2.js"></script>
<script src="WEB-INF/assets/js/markdownit-edit-3.js"></script>
<script src="WEB-INF/assets/js/markdownit-edit.js"></script>
<script src="WEB-INF/assets/js/Sidebar-Menu.js"></script>
</body>

</html>