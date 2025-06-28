package com.equilibriovital.dao;

import com.equilibriovital.modelo.Serie;

// Esta es la INTERFAZ (el contrato)
public interface SerieDAO {
    // Define qué se puede hacer, pero no cómo se hace.
    Serie obtenerPorIdPaciente(int idPaciente);
}