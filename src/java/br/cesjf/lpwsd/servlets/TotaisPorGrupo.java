/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cesjf.lpwsd.servlets;

import br.cesjf.lpwsd.dao.OcorrenciaJpaController;
import java.io.IOException;
import java.util.List;
import javax.annotation.Resource;
import javax.persistence.EntityManager;
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
@WebServlet(name = "TotaisPorGrupo", urlPatterns = {"/TotaisPorGrupo"})
public class TotaisPorGrupo extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }
    
    @PersistenceUnit(unitName = "ExercicioLPWSD01PU")
    EntityManagerFactory emf;
    @Resource(name = "java:comp/UserTransaction")
    UserTransaction ut;

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            OcorrenciaJpaController daoOcorrencia = new OcorrenciaJpaController(ut, emf);
            List<Object[]> pontosPorGrupo = daoOcorrencia.findOcorrenciaEntitiesByGrupo();
            request.setAttribute("pontos", pontosPorGrupo);
            
            System.out.println(pontosPorGrupo.get(0)[0]);             
            System.out.println(pontosPorGrupo.get(0)[1]); 
            System.out.println(pontosPorGrupo.get(1)[0]); 
            System.out.println(pontosPorGrupo.get(1)[1]); 
            System.out.println(pontosPorGrupo.get(2)[0]); 
            System.out.println(pontosPorGrupo.get(2)[1]); 
            System.out.println(pontosPorGrupo.get(3)[0]); 
            System.out.println(pontosPorGrupo.get(3)[1]);
            
            request.getRequestDispatcher("/WEB-INF/totais-por-grupo.jsp").forward(request, response);
        
    }
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
}
