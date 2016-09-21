<%-- 
    Document   : busca-ocorrencia
    Created on : 20/09/2016, 20:18:50
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ocorrências: </h1>
        
        <table>
            <tr>
                <th>Data:</th>
                <th>Aluno:</th>
                <th>Professor:</th>
                <th>Pontuação: </th>
            </tr>
            <c:forEach var="ocorrencias" items="${ocorrencias}">
                <tr>
                    <td>${ocorrencias.aluno.nome}"</td>
                    <td>${ocorrencias.professor.nome}"</td>
                    <td>${ocorrencias.pontos}"</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
