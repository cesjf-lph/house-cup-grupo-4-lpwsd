
package br.cesjf.lpwsd.servlets;

import br.cesjf.lpwsd.Aluno;
import br.cesjf.lpwsd.Ocorrencia;
import br.cesjf.lpwsd.Professor;
import br.cesjf.lpwsd.dao.AlunoJpaController;
import br.cesjf.lpwsd.dao.OcorrenciaJpaController;
import br.cesjf.lpwsd.dao.ProfessorJpaController;
import br.cesjf.lpwsd.dao.exceptions.RollbackFailureException;
import java.io.IOException;
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
@WebServlet(name = "OcorrenciaServlet", urlPatterns = {"/OcorrenciaServlet"})
public class OcorrenciaServlet extends HttpServlet {
    
    @PersistenceUnit(unitName = "ExercicioLPWSD01PU")
    EntityManagerFactory emf;
    @Resource(name = "java:comp/UserTransaction")
    UserTransaction ut;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AlunoJpaController daoAluno = new AlunoJpaController(ut, emf);
        List<Aluno> alunos = daoAluno.findAlunoEntities();
        request.setAttribute("alunos", alunos);
        
        ProfessorJpaController daoProfessor = new ProfessorJpaController(ut, emf);
        List<Professor> professores = daoProfessor.findProfessorEntities();
        request.setAttribute("professores", professores);
        
        request.getRequestDispatcher("/WEB-INF/lancar-ocorrencia.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Long id_aluno = Long.parseLong(request.getParameter("aluno"));
        Long id_professor = Long.parseLong(request.getParameter("professor"));
        float pontos = Float.parseFloat(request.getParameter("nota"));
        String motivo = request.getParameter("motivo");
        
        AlunoJpaController daoAluno = new AlunoJpaController(ut, emf);
        ProfessorJpaController daoProfessor = new ProfessorJpaController(ut,emf);
        
        Ocorrencia ocorrencia = new Ocorrencia();
        
        ocorrencia.setAluno(daoAluno.findAluno(id_aluno));
        ocorrencia.setProfessor(daoProfessor.findProfessor(id_professor));
        ocorrencia.setMotivo(motivo);
        ocorrencia.setPontos(pontos);        
        
        OcorrenciaJpaController daoOcorrencia = new OcorrenciaJpaController(ut, emf);
        try {
            daoOcorrencia.create(ocorrencia);
        } catch (RollbackFailureException ex) {
            Logger.getLogger(OcorrenciaServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(OcorrenciaServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
                
        request.setAttribute("ocorrencia", ocorrencia);
        request.getRequestDispatcher("/WEB-INF/detalhes-ocorrencia.jsp").forward(request, response);
    }


}
