/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cesjf.lpwsd.servlets;

import br.cesjf.lpwsd.dao.OcorrenciaJpaController;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
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
            
            request.getRequestDispatcher("/WEB-INF/totais-por-grupo.jsp").forward(request, response);
        
    }
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        OcorrenciaJpaController daoOcorrencia = new OcorrenciaJpaController(ut, emf);
        String ano = request.getParameter("ano_inicial");
        String mes = request.getParameter("mes_inicial");
        String dataInicial = ano + "-"+ mes + "-" + "01";
        
        String ano1 = request.getParameter("ano_final");
        String mes1 = request.getParameter("mes_final");
        String dataFinal = ano1 + "-"+ mes1 + "-" + "01";
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        
        Date data1 = null;
        try {
            data1 = sdf.parse(dataInicial);
        } catch (ParseException ex) {
            Logger.getLogger(TotaisPorGrupo.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        Date data2 = null;
        try {
            data2 = sdf.parse(dataFinal);
        } catch (ParseException ex) {
            Logger.getLogger(TotaisPorGrupo.class.getName()).log(Level.SEVERE, null, ex);
        }       
       
        System.out.println("Data inicial: " + data1);
        System.out.println("Data final: " + data2);
        
        List<Object[]> pontosPorGrupo = daoOcorrencia.findOcorrenciaEntitiesByGrupoPeriodo(data1, data2);
        request.setAttribute("pontos", pontosPorGrupo);

        request.getRequestDispatcher("/WEB-INF/totais-por-grupo.jsp").forward(request, response);
    }

    
}
