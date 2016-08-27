
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
        
        aluno.setNome(request.getParameter("nome"));
        aluno.setEndereco(request.getParameter("endereco"));
        aluno.setEmail(request.getParameter("email"));
        
        if (request.getParameter("sexo").equals("1")) {
            aluno.setSexo("Feminino");
        } else {
            aluno.setSexo("Masculino");
        }
        
        request.setAttribute("aluno", aluno);
        request.getRequestDispatcher("/WEB-INF/detalhes-aluno.jsp").forward(request, response);
        
    }

}
