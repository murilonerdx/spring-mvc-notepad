package com.example.NotepadDemo.domain.usuario.entity;

import java.time.LocalDate;

public class Usuario {
    private String nome;
    private String senha;
    private LocalDate data;


    public Usuario(String nome, String senha, LocalDate data) {
        this.nome = nome;
        this.senha = senha;
        this.data = data;
    }

    public Usuario(){}

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public LocalDate getData() {
        return data;
    }

    public void setData(LocalDate data) {
        this.data = data;
    }
}
