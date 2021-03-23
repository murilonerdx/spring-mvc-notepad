package com.example.NotepadDemo.controller;

import javax.mvc.Controller;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "NotaController", value = "/minhas-notas")
public class NotaController extends HttpServlet {

    static String message = "Hello word";
    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
       System.out.println("Hello world");
    }

}
