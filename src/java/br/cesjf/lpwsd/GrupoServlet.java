/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cesjf.lpwsd;

import br.cesjf.lpwsd.dao.AlunoJpaController;
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

/**
 *
 * @author aluno
 */
@WebServlet(name = "GrupoServlet", urlPatterns = {"/GrupoServlet"})
public class GrupoServlet extends HttpServlet {

    @PersistenceUnit(unitName = "ExercicioLPWSD01PU")
    EntityManagerFactory emf;
    @Resource(name = "java:comp/UserTransaction")
    UserTransaction ut;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AlunoJpaController daoAluno = new AlunoJpaController(ut, emf);
        ProfessorJpaController daoProfessor = new ProfessorJpaController(ut, emf);
        List<Aluno> alunos = daoAluno.findAlunoEntities();
        //List<Professor> professores = daoProfessor.findProfessorEntities();
        request.setAttribute("alunos", alunos);
        //request.setAttribute("professores",professores);
        request.getRequestDispatcher("/WEB-INF/lancar-nota.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AlunoJpaController daoAluno = new AlunoJpaController(ut, emf);
        Long id = Long.parseLong(request.getParameter("nome"));
        daoAluno.findAluno(id);
    }

}
