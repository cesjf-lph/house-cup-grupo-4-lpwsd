
package br.cesjf.lpwsd.servlets;

import br.cesjf.lpwsd.Aluno;
import br.cesjf.lpwsd.Ocorrencia;
import br.cesjf.lpwsd.Professor;
import br.cesjf.lpwsd.dao.AlunoJpaController;
import br.cesjf.lpwsd.dao.OcorrenciaJpaController;
import br.cesjf.lpwsd.dao.ProfessorJpaController;
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
        
        AlunoJpaController daoAluno = new AlunoJpaController(ut, emf);
        List<Aluno> alunos = daoAluno.findAlunoEntities();
        request.setAttribute("alunos", alunos);
        
        ProfessorJpaController daoProfessor = new ProfessorJpaController(ut, emf);
        List<Professor> professores = daoProfessor.findProfessorEntities();
        request.setAttribute("professores", professores);
        
        request.getRequestDispatcher("/WEB-INF/busca-ocorrencia.jsp").forward(request, response);
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        AlunoJpaController daoAluno = new AlunoJpaController(ut, emf);
        ProfessorJpaController daoProfessor = new ProfessorJpaController(ut, emf);
        OcorrenciaJpaController daoOcorrencia = new OcorrenciaJpaController(ut, emf);
        
        if (request.getParameter("filtro_aluno")!=null) {
            Long id_aluno = Long.parseLong(request.getParameter("filtro_aluno"));
            Aluno aluno = daoAluno.findAluno(id_aluno);
            request.setAttribute("aluno", aluno);
            List<Ocorrencia> ocorrencias = daoOcorrencia.findOcorrenciaEntitiesByAluno(aluno);
            request.setAttribute("ocorrencias", ocorrencias);
        }
        
        if (request.getParameter("filtro_prof")!=null) {
            Long id_professor = Long.parseLong(request.getParameter("filtro_prof"));
            Professor professor = daoProfessor.findProfessor(id_professor);
            request.setAttribute("professor", professor);
            List<Ocorrencia> ocorrencias = daoOcorrencia.findOcorrenciaEntitiesByProfessor(professor);
            request.setAttribute("ocorrencias", ocorrencias);
        }
        
        if (request.getParameter("filtro_grupo")!=null) {
            Long grupo = Long.parseLong(request.getParameter("filtro_grupo"));
            
        }
        
        List<Aluno> alunos = daoAluno.findAlunoEntities();
        request.setAttribute("alunos", alunos);                
                
        
        List<Professor> professores = daoProfessor.findProfessorEntities();
        request.setAttribute("professores", professores);
                
        request.getRequestDispatcher("/WEB-INF/busca-ocorrencia.jsp").forward(request, response);
    }
}

