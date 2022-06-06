package persistenciaa;

import Persistencia.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logicaa.Persona;

public class ControladoraPersistencia {

    PersonaController personaJpa = new PersonaController();

    public void crearPersona(Persona persona) {
        personaJpa.create(persona);
    }

    public List<Persona> traerPersona() {
        return personaJpa.findPersonaEntities();
    }

    public void eliminarPersona(int id) throws NonexistentEntityException {
        personaJpa.destroy(id);
    }

    public Persona traerPorId(int id) {
        return personaJpa.findPersona(id);
    }

    public void modificarPersona(Persona persona) {
        try {
            personaJpa.edit(persona);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
