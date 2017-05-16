/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import entities.Actividad;
import entities.Categoria;
import entities.Usuario;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;

/**
 *
 * @author Alan
 */
@Stateless
public class DeportivoEJB {

    @PersistenceUnit
    EntityManagerFactory emf;
    
    
    //Usuarios
    
    public boolean login(String n, String p) {
        EntityManager em = emf.createEntityManager();
        // OJO que es´ta mal!!
//        Usuario encontrado = em.find(Usuario.class, n);
        Query query = em.createNamedQuery("Usuario.findByNombre");
        query.setParameter("nombre", n);
        Usuario encontrado = (Usuario) query.getResultList().get(0);
        //Usuario encontrado = em.createQuery("Select u FROM Usuario u WHERE u.nombre = :nombre").getFirstResult();
        em.close();
        return encontrado != null && encontrado.getPass().equals(p);
    }
    
    public boolean existUser(String n) {
        EntityManager em = emf.createEntityManager();
        //Usuario encontrado = em.find(Usuario.class, n);
        // OJO LISTA IS EMPTY
        List<Usuario> encontrado = em.createNamedQuery("Usuario.findByNombre").setParameter("nombre", n).getResultList();
        em.close();
        
        return !encontrado.isEmpty();
    }
    
    public boolean insertUser(Usuario u) {
        if (!existUser(u.getNombre())) {
            EntityManager em = emf.createEntityManager();
            //No va
            
            em.persist(u);
            em.flush();
            em.close();
            return true;
        }
        return false;
    }
    
    //Categorias
    
    public List<Categoria> allCategories(){
        
        List<Categoria> c = emf.createEntityManager().createNamedQuery("Categoria.findAll").getResultList();
        
        return c;
    }
    
    //Actividades
    
    public List<Actividad> allActivities(){
        
        List<Actividad> c = emf.createEntityManager().createNamedQuery("Actividad.findAll").getResultList();
        
        return c;
    }
}
