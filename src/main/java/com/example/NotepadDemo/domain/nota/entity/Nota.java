package com.example.NotepadDemo.domain.nota.entity;

import java.time.LocalDate;

public class Nota {

    private int id;
    private String titulo;
    private String assunto;
    private String texto;
    private LocalDate data;

    public Nota(int id, String titulo, String assunto, LocalDate data) {
        this.id = id;
        this.titulo = titulo;
        this.assunto = assunto;
        this.data = data;
    }



    public Nota(){

    }

    public String getAssunto() {
        return assunto;
    }

    public void setAssunto(String assunto) {
        this.assunto = assunto;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public LocalDate getData() {
        return data;
    }

    public void setData(LocalDate data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "Nota{" +
                "id=" + id +
                ", titulo='" + titulo + '\'' +
                ", texto='" + texto + '\'' +
                ", data=" + data +
                '}';
    }
}
