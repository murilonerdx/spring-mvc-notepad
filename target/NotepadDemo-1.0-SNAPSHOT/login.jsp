<%@ page import="com.example.NotepadDemo.domain.usuario.service.UsuarioService" %><%--
  Created by IntelliJ IDEA.
  User: coelh
  Date: 22/03/2021
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <style>
        <%@include file="WEB-INF/assets/bootstrap/css/bootstrap.min.css" %>
    </style>
    <style>
        <%@include file="WEB-INF/assets/fonts/fontawesome-all.min.css" %>
    </style>
    <style>
        <%@include file="WEB-INF/assets/fonts/font-awesome.min.css" %>
    </style>
    <style>
        <%@include file="WEB-INF/assets/css/styles.css" %>
    </style>
    <style>
        <%@include file="WEB-INF/assets/css/Login-Center.css" %>
    </style>
    <style>
        <%@include file="WEB-INF/assets/fonts/fontawesome5-overrides.min.css" %>
    </style>


    <title>Notepad</title>
    <%--    <link rel="stylesheet" href="<c:url value="WEB-INF/assets/bootstrap/css/bootstrap.min.css" />">--%>
    <%--    <link rel="stylesheet" href="<c:url value="WEB-INF/assets/fonts/fontawesome-all.min.css" />">--%>
    <%--    <link rel="stylesheet" href="WEB-INF/assets/fonts/font-awesome.min.css">--%>
    <%--    <link rel="stylesheet" href="WEB-INF/assets/fonts/fontawesome5-overrides.min.css">--%>
    <%--    <link rel="stylesheet" href="WEB-INF/assets/css/Lista-Productos-Canito.css">--%>
    <%--    <link rel="stylesheet" href="WEB-INF/assets/css/Login-Center.css">--%>
    <%--    <link rel="stylesheet" href="WEB-INF/assets/css/markdownit-edit-1.css">--%>
    <%--    <link rel="stylesheet" href="WEB-INF/assets/css/markdownit-edit.css">--%>
    <%--    <link rel="stylesheet" href="WEB-INF/assets/css/NZButtonSaveClose.css">--%>
    <%--    <link rel="stylesheet" href="WEB-INF/assets/css/Sidebar-Menu-1.css">--%>
    <%--    <link rel="stylesheet" href="WEB-INF/assets/css/Sidebar-Menu.css">--%>
    <%--    <link rel="stylesheet" href="WEB-INF/assets/css/styles.css">--%>
</head>

<body>
<div class="container">
    <div class="row row-login">
        <div class="col-10 col-sm-6 col-md-4 offset-1 offset-sm-3 offset-md-4">
            <h1>Notepad Login</h1>
            <div>
                <div class="card-body">
                    <h3>Login </h3>
                    <form method="post" action="Login">
                        <div class="form-group mb-3"><label class="form-label">Usuario</label><input name="userName"
                                                                                                     class="form-control"
                                                                                                     type="text"
                                                                                                     required></div>
                        <div class="form-group mb-3"><label class="form-label">Senha</label><input name="password"
                                                                                                   class="form-control"
                                                                                                   type="password"
                                                                                                   required></div>
                        <button class="btn btn-success d-block w-100" type="submit">LOGIN</button>
                        <a class="btn btn-link center-block" role="button" href="#"></a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>