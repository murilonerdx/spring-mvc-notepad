package com.example.NotepadDemo.util;


import com.example.NotepadDemo.domain.usuario.entity.Usuario;
import com.example.NotepadDemo.domain.usuario.service.UsuarioService;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.time.LocalDate;

public class TestaConexao {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        final String url = "jdbc:postgresql://localhost:5432/notepad";
        final String usuario = "postgres";
        final String senha = "12345";

        Connection conexao = DriverManager
                .getConnection(url, usuario, senha);
        if(conexao != null){
            System.out.println("Conexão efetuada com sucesso!");
            UsuarioService service = new UsuarioService();
            Usuario user = new Usuario("jai","123", LocalDate.now());
            boolean oi = service.getUser(user);
            System.out.println(oi);
        }else{
            System.out.println("Conexão falhou");
        }
        conexao.close();
    }
}