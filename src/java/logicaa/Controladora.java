/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logicaa;

import Persistencia.exceptions.NonexistentEntityException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import persistenciaa.ControladoraPersistencia;

public class Controladora {

    ControladoraPersistencia controlPersis = new ControladoraPersistencia();

    public void altaPersona(String nombreE, String apellidoE, String dniE, String direccionE, String fechaE) throws ParseException {
        Persona persona = new Persona();
        persona.setFechaNaci(new SimpleDateFormat("yyyy-MM-dd").parse(fechaE));
        persona.setApellido(apellidoE);
        persona.setDireccion(direccionE);
        persona.setNombre(nombreE);
        persona.setDni(dniE);
        controlPersis.crearPersona(persona);

    }

    public List<Persona> traerPersona() {
        return controlPersis.traerPersona();

    }

    public void eliminarPersona(int id) throws NonexistentEntityException {
        controlPersis.eliminarPersona(id);
    }

    public Persona traerPorId(int id) {
        return controlPersis.traerPorId(id);
    }

    public void modificarPersona(Persona persona) {
        controlPersis.modificarPersona(persona);
    }

}
