package com.example.NotepadDemo.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DbService {

    public static Connection getConexao() {
        try {
            Properties prop = getProperties();
            Class.forName("org.postgresql.Driver");
            final String url = prop.getProperty("banco.url");
            final String usuario = prop.getProperty("banco.username");
            final String senha = prop.getProperty("banco.password");

            return DriverManager.getConnection(url, usuario, senha);
        } catch (SQLException | ClassNotFoundException | IOException e) {
            throw new RuntimeException(e);
        }


    }

    private static Properties getProperties() throws IOException {
        Properties prop = new Properties();
        String caminho = "../conexao.properties";
        prop.load(DbService.class.getResourceAsStream(caminho));
        return prop;
    }
}
