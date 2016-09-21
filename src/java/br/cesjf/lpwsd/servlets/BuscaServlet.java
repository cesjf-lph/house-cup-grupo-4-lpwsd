
package br.cesjf.lpwsd.servlets;

import br.cesjf.lpwsd.Ocorrencia;
import br.cesjf.lpwsd.dao.OcorrenciaJpaController;
import java.io.IOException;
import java.util.List;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.UserTransaction;


@WebServlet(name = "BuscaServlet", urlPatterns = {"/BuscaServlet"})
public class BuscaServlet extends HttpServlet {

    @PersistenceUnit(unitName = "ExercicioLPWSD01PU")
    EntityManagerFactory emf;
    @Resource(name = "java:comp/UserTransaction")
    UserTransaction ut;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        OcorrenciaJpaController daoOcorrencia = new OcorrenciaJpaController(ut, emf);
        List<Ocorrencia> ocorrencias = daoOcorrencia.findOcorrenciaEntities();
        request.setAttribute("ocorrencias", ocorrencias);
        request.getRequestDispatcher("/WEB-INF/busca-ocorrencia.jsp").forward(request, response);
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
