package com.example.NotepadDemo.controller;

import com.example.NotepadDemo.domain.nota.entity.Nota;
import com.example.NotepadDemo.domain.nota.service.NotaService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "HomeController", value = "/Home")
public class HomeController extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        if (request.getSession().getAttribute("usuarioLogado") != null) {
            request.getSession().setMaxInactiveInterval(10);
            response.sendRedirect(request.getContextPath() + "/home.jsp");
        } else {
            response.sendRedirect(request.getContextPath() + "/");
        }
    }



}
