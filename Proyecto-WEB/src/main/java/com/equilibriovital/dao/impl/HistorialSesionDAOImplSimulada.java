package com.equilibriovital.dao.impl;

import com.equilibriovital.dao.HistorialSesionDAO;
import com.equilibriovital.modelo.HistorialSesion;

public class HistorialSesionDAOImplSimulada implements HistorialSesionDAO {

    @Override
    public boolean guardar(HistorialSesion historial) {
        // SIMULACIÓN: En una aplicación real, aquí iría el código JDBC para hacer el INSERT.
        System.out.println("DAO (Simulado): Guardando historial en la base de datos...");
        System.out.println(" -> Dolor Inicial: " + historial.getDolorInicio());
        System.out.println(" -> Dolor Final: " + historial.getDolorFinal());
        System.out.println(" -> Comentario: " + historial.getComentario());

        // Simulamos que el guardado siempre es exitoso.
        return true;
    }
}