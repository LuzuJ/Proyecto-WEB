package com.equilibriovital.modelo;

import java.io.Serializable;

public class Serie implements Serializable {
    private static final long serialVersionUID = 1L;

    private int id;
    private String nombre;
    private int sesionesCompletadas;
    private int sesionesTotales;
    // En una implementación real, aquí tendrías una List<Postura>

    public Serie() {
    }

    // Getters y Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getSesionesCompletadas() {
        return sesionesCompletadas;
    }

    public void setSesionesCompletadas(int sesionesCompletadas) {
        this.sesionesCompletadas = sesionesCompletadas;
    }

    public int getSesionesTotales() {
        return sesionesTotales;
    }

    public void setSesionesTotales(int sesionesTotales) {
        this.sesionesTotales = sesionesTotales;
    }
}