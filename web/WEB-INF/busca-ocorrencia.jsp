<%-- 
    Document   : busca-ocorrencia
    Created on : 20/09/2016, 20:18:50
    Author     : aluno
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ocorrências</title>
        <link rel="stylesheet" href="estilo.css" />
    </head>
    <body>
    <center>
        <div id="pagina">
        <h1>Ocorrências: </h1>
        
        <form action="BuscaServlet">
            
            <select name="filtro">
                <c:forEach var="aluno" items="${alunos}">
                    <option>${aluno.nome}</option>
                </c:forEach>
            </select>
            
            <select name="filtro">
                <c:forEach var="professor" items="${professores}">
                    <option>${professor.nome}</option>
                </c:forEach>
            </select>
        </form>
        <br />
        <table border="1">
            <tr>
                <th>Aluno:</th>
                <th>Grupo:</th>
                <th>Professor:</th>
                <th>Pontuação: </th>
                <th>Data: </th>
            </tr>
            <c:forEach var="ocorrencia" items="${ocorrencias}">
                <tr>
                    <td>${ocorrencia.aluno.nome}</td>
                    <td>${ocorrencia.aluno.grupo}</td>
                    <td>${ocorrencia.professor.nome}</td>
                    <td>${ocorrencia.pontos}</td>
                    <td>${ocorrencia.data}</td>
                </tr>
            </c:forEach>
        </table>
        <a href="index.html">Página Principal</a>
        </div>
    </center>
    </body>
</html>
