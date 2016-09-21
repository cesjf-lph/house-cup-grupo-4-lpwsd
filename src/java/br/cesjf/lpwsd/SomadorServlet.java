
package br.cesjf.lpwsd;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SomadorServlet", urlPatterns = {"/somador.html"})
public class SomadorServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("num1") != null && request.getParameter("num2")!= null )  {
            int num1 = Integer.parseInt(request.getParameter("num1"));
            int num2 = Integer.parseInt(request.getParameter("num2"));
            int soma = num1 + num2;
            System.out.println(soma);
            request.setAttribute("soma", soma);
            request.getRequestDispatcher("/WEB-INF/resultado.jsp").forward(request, response);
        }
    }

}
