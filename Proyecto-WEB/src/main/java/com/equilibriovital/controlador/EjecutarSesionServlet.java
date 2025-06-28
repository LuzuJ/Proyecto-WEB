package com.equilibriovital.controlador;

import com.equilibriovital.dao.SerieDAO;
import com.equilibriovital.dao.PosturaDAO;
import com.equilibriovital.dao.HistorialSesionDAO;
import com.equilibriovital.dao.impl.SerieDAOImplSimulada;
import com.equilibriovital.dao.impl.PosturaDAOImplSimulada;
import com.equilibriovital.dao.impl.HistorialSesionDAOImplSimulada;
import com.equilibriovital.modelo.Serie;
import com.equilibriovital.modelo.Postura;
import com.equilibriovital.modelo.HistorialSesion;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date; 

@WebServlet("/sesion")
public class EjecutarSesionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    // --- Atributos para los DAOs ---
    private SerieDAO serieDAO;
    private PosturaDAO posturaDAO;
    private HistorialSesionDAO historialDAO;

    // --- El método init() se ejecuta una sola vez al inicio ---
    public void init() {
        // Inicializamos nuestras implementaciones de DAO
        serieDAO = new SerieDAOImplSimulada();
        posturaDAO = new PosturaDAOImplSimulada();
        historialDAO = new HistorialSesionDAOImplSimulada();
    }

    // --- doGet() maneja las peticiones para MOSTRAR páginas ---
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion == null) {
            accion = "dashboard";
        }

        try {
            switch (accion) {
                case "dashboard":
                    cargarDashboard(request, response);
                    break;
                case "iniciar":
                    presentarFormularioDolor(request, response);
                    break;
                case "notificarFinTemporizador":
                    gestionarSiguientePostura(request, response);
                    break;
                case "verInstrucciones":
                    presentarInstrucciones(request, response);
                    break;
                default:
                    cargarDashboard(request, response);
                    break;
            }
        } catch (Exception e) {
            System.out.println("ERROR en doGet: " + e.getMessage());
            e.printStackTrace();
            throw new ServletException("Error en el servlet al procesar la petición GET", e);
        }
    }
    
    // --- doPost() maneja las peticiones para PROCESAR datos de formularios ---
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion == null) {
            response.sendRedirect(request.getContextPath() + "/sesion");
            return;
        }

        try {
            switch (accion) {
                case "registrarDolor":
                    registrarDolorYComenzarSerie(request, response);
                    break;
                // --- CORRECCIÓN CLAVE: La lógica de registrar la evaluación va aquí ---
                case "registrarEvaluacion":
                    registrarEvaluacionFinal(request, response);
                    break;
                default:
                    response.sendRedirect(request.getContextPath() + "/sesion");
                    break;
            }
        } catch (Exception e) {
            System.out.println("ERROR en doPost: " + e.getMessage());
            e.printStackTrace();
            throw new ServletException("Error en el servlet al procesar la petición POST", e);
        }
    }
    
    // --- Métodos Privados que implementan cada acción ---
    
    private void cargarDashboard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("CONTROLADOR: Acción 'cargarDashboard'");
        Serie serie = serieDAO.obtenerPorIdPaciente(1); 
        request.setAttribute("serieDelPaciente", serie);
        request.getRequestDispatcher("dashboardPaciente.jsp").forward(request, response);
    }
    
    private void presentarFormularioDolor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("CONTROLADOR: Acción 'presentarFormularioDolor'");
        request.getRequestDispatcher("dolorInicial.jsp").forward(request, response);
    }

    private void registrarDolorYComenzarSerie(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("CONTROLADOR: Acción 'registrarDolorYComenzarSerie'");
        String dolorInicialStr = request.getParameter("dolorInicio");
        HttpSession session = request.getSession();
        session.setAttribute("dolorInicial", dolorInicialStr);
        session.setAttribute("pasoActual", 0);
        gestionarSiguientePostura(request, response);
    }
    
    private void gestionarSiguientePostura(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("CONTROLADOR: Acción 'gestionarSiguientePostura'");
        HttpSession session = request.getSession();
        
        // Verificamos que 'pasoActual' exista en la sesión para evitar errores
        Object pasoActualObj = session.getAttribute("pasoActual");
        if (pasoActualObj == null) {
            cargarDashboard(request, response); // Si no hay sesión, volvemos al inicio
            return;
        }
        
        int pasoActual = (int) pasoActualObj;
        Postura postura = posturaDAO.obtenerPorPaso(pasoActual);
        
        int duracionSegundos = 120;
        if (pasoActual == 1) { duracionSegundos = 180; }
        
        if (postura != null) {
            System.out.println("Mostrando postura: " + postura.getNombre());
            request.setAttribute("posturaActual", postura);
            
            request.setAttribute("duracionSegundos", duracionSegundos); 
            
            session.setAttribute("pasoActual", pasoActual + 1);
            request.getRequestDispatcher("posturaEjecucion.jsp").forward(request, response);
        } else {
            System.out.println("No hay más posturas, mostrando evaluación final.");
            presentarEvaluacionFinal(request, response);
        }
    }
    
    private void presentarInstrucciones(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("CONTROLADOR: Acción 'presentarInstrucciones'");
        Postura posturaConDetalles = posturaDAO.obtenerDetallesCompletos(1);
        request.setAttribute("posturaDetallada", posturaConDetalles);
        request.getRequestDispatcher("visualizarPosturas.jsp").forward(request, response);
    }

    private void presentarEvaluacionFinal(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("CONTROLADOR: Acción 'presentarEvaluacionFinal'");
        request.getRequestDispatcher("registroDolorFinalComentario.jsp").forward(request, response);
    }
    
    private void registrarEvaluacionFinal(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("CONTROLADOR: Acción 'registrarEvaluacionFinal'");
        HttpSession session = request.getSession();

        String dolorFinal = request.getParameter("dolorFinal");
        String comentario = request.getParameter("comentario");
        String dolorInicial = (String) session.getAttribute("dolorInicial");
        
        if (dolorFinal != null && !dolorFinal.isEmpty() && comentario != null && !comentario.trim().isEmpty()) {
            HistorialSesion historial = new HistorialSesion();
            historial.setFecha(new Date());
            historial.setDolorInicio(dolorInicial);
            historial.setDolorFinal(dolorFinal);
            historial.setComentario(comentario);
            
            historialDAO.guardar(historial);
            
            session.removeAttribute("dolorInicial");
            session.removeAttribute("pasoActual");
            
            response.sendRedirect(request.getContextPath() + "/sesion?accion=dashboard&exito=true");
        } else {
            request.setAttribute("error", "Por favor, complete todos los campos.");
            presentarEvaluacionFinal(request, response);
        }
    }
}