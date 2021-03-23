package com.example.NotepadDemo.domain.nota.service;

import com.example.NotepadDemo.domain.nota.entity.Nota;
import com.example.NotepadDemo.domain.usuario.entity.Usuario;
import com.example.NotepadDemo.util.DbService;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class NotaService {

    public List<Nota> findAllNotas() throws SQLException {
        String sql = "select * from notas";

        Connection conexao = DbService.getConexao();

        Statement stmt = conexao.createStatement();
        ResultSet resultado = stmt.executeQuery(sql);

        List<Nota> notas = new ArrayList<>();

        while(resultado.next()) {
            int id = resultado.getInt("id");
            String titulo = resultado.getString("titulo");
            String assunto = resultado.getString("assunto");
            notas.add(new Nota(id,titulo, assunto,null));
        }
        stmt.close();
        conexao.close();
        return notas;


    }
}
