package com.example.NotepadDemo.domain.usuario.service;

import com.example.NotepadDemo.domain.usuario.entity.Usuario;
import com.example.NotepadDemo.util.DbService;

import javax.persistence.PostLoad;
import javax.servlet.annotation.WebServlet;
import java.sql.*;

@WebServlet
public class UsuarioService {

    public boolean getUser(Usuario obj) throws SQLException {
        String sql = "select * from usuario where username=? and password=?";

        Connection conexao = DbService.getConexao();
        PreparedStatement stmt = conexao.prepareStatement(sql);
        stmt.setString(1, obj.getNome());
        stmt.setString(2, obj.getSenha());

        ResultSet resultado = stmt.executeQuery();
        if (resultado.next()) {
            return true;
        } else {
            return false;
        }
    }


}
