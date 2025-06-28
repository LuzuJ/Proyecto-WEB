package com.equilibriovital.dao;

import com.equilibriovital.modelo.HistorialSesion;

public interface HistorialSesionDAO {
    // Contrato: Define que debe existir un método para guardar el historial.
    boolean guardar(HistorialSesion historial);
}