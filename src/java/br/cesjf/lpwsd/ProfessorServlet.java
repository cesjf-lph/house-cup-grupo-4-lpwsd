/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cesjf.lpwsd;

import br.cesjf.lpwsd.dao.ProfessorJpaController;
import br.cesjf.lpwsd.dao.exceptions.RollbackFailureException;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.UserTransaction;

/**
 *
 * @author aluno
 */
@WebServlet(name = "ProfessorServlet", urlPatterns = {"/ProfessorServlet"})
public class ProfessorServlet extends HttpServlet {

    @PersistenceUnit(unitName = "ExercicioLPWSD01PU")
    EntityManagerFactory emf;
    @Resource(name = "java:comp/UserTransaction")
    UserTransaction ut;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Professor professor = new Professor();
        professor.setNome(request.getParameter("nome"));
        ProfessorJpaController daoProfessor = new ProfessorJpaController(ut, emf);
        try {
            daoProfessor.create(professor);
        } catch (RollbackFailureException ex) {
            Logger.getLogger(ProfessorServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(ProfessorServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        //daoProfessor.findProfessorEntities();
                
        request.setAttribute("professor", professor);
        request.getRequestDispatcher("/novo-professor.jsp").forward(request, response);
    }

}
