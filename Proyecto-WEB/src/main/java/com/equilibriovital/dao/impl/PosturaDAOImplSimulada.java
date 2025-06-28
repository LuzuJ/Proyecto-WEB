package com.equilibriovital.dao.impl;
import com.equilibriovital.dao.PosturaDAO;
import com.equilibriovital.modelo.Postura;
import java.util.ArrayList;
import java.util.List;

public class PosturaDAOImplSimulada implements PosturaDAO {
    
    // Creamos una lista de posturas para simular la serie completa.
    private List<Postura> serieDePrueba;

    public PosturaDAOImplSimulada() {
        serieDePrueba = new ArrayList<>();
        
        // Creamos y añadimos la primera postura
        Postura p1 = new Postura();
        p1.setNombre("Postura del Gato-Vaca");
        p1.setFotoUrl("assets/img/gato-vaca.jpg");
        serieDePrueba.add(p1);

        // Creamos y añadimos la segunda postura
        Postura p2 = new Postura();
        p2.setNombre("Postura del Niño");
        p2.setFotoUrl("assets/img/postura-nino.jpg"); // Asegúrate de tener esta imagen
        serieDePrueba.add(p2);
        
        // Creamos y añadimos la tercera postura
        Postura p3 = new Postura();
        p3.setNombre("Postura de la Esfinge");
        p3.setFotoUrl("assets/img/postura-esfinge.jpg"); // Asegúrate de tener esta imagen
        serieDePrueba.add(p3);
    }

    @Override
    public Postura obtenerPorPaso(int numeroPaso) {
        System.out.println("DAO (Simulado): Obteniendo postura para el paso " + numeroPaso);
        
        // Verificamos si el número de paso está dentro de los límites de nuestra lista
        if (numeroPaso >= 0 && numeroPaso < serieDePrueba.size()) {
            return serieDePrueba.get(numeroPaso);
        }
        
        // Si pedimos un paso que no existe (ej. la 4ta postura), devolvemos null.
        // Esto le indicará al controlador que la serie ha terminado.
        return null; 
    }
    
    @Override
    public Postura obtenerDetallesCompletos(int idPostura) {
        System.out.println("DAO (Simulado): Obteniendo detalles completos para la postura ID " + idPostura);
        // En un caso real, harías un "SELECT * FROM posturas WHERE id = ?"
        // Para la simulación, vamos a devolver la primera postura de nuestra lista.
        if (!serieDePrueba.isEmpty()) {
            Postura p = serieDePrueba.get(0); // Devolvemos la primera como ejemplo
            p.setInstrucciones("Comienza en cuatro puntos con las muñecas alineadas bajo los hombros y las rodillas bajo las caderas.");
            p.setBeneficios("Flexibiliza la columna vertebral y alivia la tensión en la espalda.");
            return p;
        }
        return null;
    }
}