package com.example.NotepadDemo.controller;

import com.example.NotepadDemo.domain.nota.entity.Nota;
import com.example.NotepadDemo.domain.nota.service.NotaService;
import com.example.NotepadDemo.domain.usuario.entity.Usuario;
import com.example.NotepadDemo.domain.usuario.service.UsuarioService;

import javax.mvc.Controller;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDate;

@WebServlet(name = "CriarNotaController", value = "/criar-notas")
public class CriarNotaController extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            Nota nota = new Nota();
            NotaService service = new NotaService();
            String titulo = request.getParameter("textTitulo");
            String texto = request.getParameter("textCampo");
            String assunto = request.getParameter("textAssunto");

            nota.setTitulo(titulo);
            nota.setTexto(texto);
            nota.setAssunto(assunto);
            nota.setId(service.findId());
            nota.setData(LocalDate.now());

            service.insertNota(nota);

            response.sendRedirect(request.getContextPath() + "/home.jsp");
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

}
