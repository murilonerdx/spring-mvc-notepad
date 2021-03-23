package com.example.NotepadDemo.controller;

import com.example.NotepadDemo.domain.nota.entity.Nota;
import com.example.NotepadDemo.domain.nota.service.NotaService;
import com.example.NotepadDemo.domain.usuario.entity.Usuario;
import com.example.NotepadDemo.domain.usuario.service.UsuarioService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

@WebServlet(name = "UserLoginController", value = "/Login")
public class UserLoginController extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        Usuario user = new Usuario(userName, password, LocalDate.now());

        HttpSession session = request.getSession();

        if (userName != null && password != null) {
            UsuarioService service = new UsuarioService();
            try {
                boolean exits = service.getUser(user);
                if (exits) {
                    session.setAttribute("usuarioLogado", user);

                    response.sendRedirect(request.getContextPath() + "/home");
                } else {
                    response.sendRedirect(request.getContextPath() + "/");
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/");
        }


    }


}
