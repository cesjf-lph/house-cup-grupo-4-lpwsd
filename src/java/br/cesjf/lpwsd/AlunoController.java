
package br.cesjf.lpwsd;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AlunoController", urlPatterns = {"/aluno.html"})
public class AlunoController extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        Aluno aluno = new Aluno(); 
        
        if (request.getParameter("nota")!=null) {
            aluno.setNome(request.getParameter("nome"));
            String nome = aluno.getNome();
            int nota = 0;
            /*select nota from aluno where nome = nome;*/
            int notaAtribuida = Integer.parseInt(request.getParameter("nota"));
            nota += notaAtribuida;
            /*update into aluno set nota = nota;*/
        }
        
        aluno.setNome(request.getParameter("nome"));
        aluno.setGrupo(request.getParameter("grupo"));
        
        request.setAttribute("aluno", aluno);
        request.getRequestDispatcher("/WEB-INF/detalhes-aluno.jsp").forward(request, response);
        
    }

}
