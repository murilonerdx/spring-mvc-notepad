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

    public void insertNota(Nota obj) throws SQLException {
//        insert into notas values(2, 'titulo','assunto','texto', 'data')
        try{
            Connection conexao = DbService.getConexao();

            String sql = "INSERT INTO NOTAS VALUES(?,?,?,?,?)";
            PreparedStatement stmt = conexao.prepareStatement(sql);
            stmt.setInt(1, obj.getId());
            stmt.setString(2, obj.getTitulo());
            stmt.setString(3, obj.getAssunto());
            stmt.setString(4, obj.getTexto());
            stmt.setString(5, String.valueOf(obj.getData()));

            stmt.execute();
            conexao.close();
            stmt.close();

        }catch(RuntimeException e){
            e.printStackTrace();
        }



    }

    public Integer findId() throws SQLException {
        String sql = "select * from notas";
        Connection conexao = DbService.getConexao();

        Statement stmt = conexao.createStatement();
        ResultSet resultado = stmt.executeQuery(sql);

        Integer contador = 0;

        while(resultado.next()) {
            contador += 1;
        }
        stmt.close();
        conexao.close();
        return contador + 1;


    }
}
