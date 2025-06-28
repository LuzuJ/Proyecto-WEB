package com.equilibriovital.modelo;

import java.io.Serializable;
import java.util.Date;

// La clase implementa Serializable, tal como lo definiste en tu diagrama de diseño.
// Esto es una buena práctica para objetos que podrían guardarse en la sesión.
public class HistorialSesion implements Serializable {
    private static final long serialVersionUID = 1L;

    // Atributos privados, como en tu diagrama
    private int idPaciente;
    private Date fecha;
    private String dolorInicio;
    private String dolorFinal;
    private String comentario;

    // Constructor vacío (necesario para muchas librerías y buenas prácticas)
    public HistorialSesion() {
    }

    // Getters y Setters: Métodos públicos para acceder y modificar los atributos privados
    public int getIdPaciente() {
        return idPaciente;
    }

    public void setIdPaciente(int idPaciente) {
        this.idPaciente = idPaciente;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getDolorInicio() {
        return dolorInicio;
    }

    public void setDolorInicio(String dolorInicio) {
        this.dolorInicio = dolorInicio;
    }

    public String getDolorFinal() {
        return dolorFinal;
    }

    public void setDolorFinal(String dolorFinal) {
        this.dolorFinal = dolorFinal;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }
}