package com.equilibriovital.dao.impl;

import com.equilibriovital.dao.SerieDAO;
import com.equilibriovital.modelo.Serie;

// Esta es la CLASE que cumple el contrato de la interfaz SerieDAO
public class SerieDAOImplSimulada implements SerieDAO {

    @Override
    public Serie obtenerPorIdPaciente(int idPaciente) {
        // SIMULACIÓN: En lugar de ir a la BD, creamos un objeto de prueba.
        System.out.println("DAO (Simulado): Obteniendo serie de prueba...");
        Serie serieDePrueba = new Serie();
        serieDePrueba.setId(101);
        serieDePrueba.setNombre("Serie Inicial para Dolor de Espalda");
        serieDePrueba.setSesionesCompletadas(3);
        serieDePrueba.setSesionesTotales(12);
        
        return serieDePrueba;
    }
}