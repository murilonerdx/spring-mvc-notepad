package com.example.NotepadDemo.controller;

import com.example.NotepadDemo.domain.nota.entity.Nota;
import com.example.NotepadDemo.domain.nota.service.NotaService;

import javax.enterprise.inject.Model;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "MostrarNotasController", value = "/mostrar-notas")
public class MostrarNotasController extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        NotaService service = new NotaService();
        try {
            List<Nota> notas = service.findAllNotas();
            request.setAttribute("notas", notas);
            RequestDispatcher view = request.getRequestDispatcher("/mostrar-notas.jsp");
            view.forward(request, response);
        } catch (SQLException | ServletException throwables) {
            throwables.printStackTrace();
        }



    }
}
