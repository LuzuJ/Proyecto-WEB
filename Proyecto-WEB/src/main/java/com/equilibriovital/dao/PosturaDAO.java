package com.equilibriovital.dao;
import com.equilibriovital.modelo.Postura;

public interface PosturaDAO {
    Postura obtenerPorPaso(int numeroPaso);
    Postura obtenerDetallesCompletos(int idPostura);
}