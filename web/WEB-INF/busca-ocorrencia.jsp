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
        
        <form action="BuscaServlet" method="post">
            Filtrar por aluno:
            <select name="filtro_aluno">
                <c:forEach var="aluno" items="${alunos}">
                    <option value="${aluno.id}">${aluno.nome}</option>
                </c:forEach>
            </select>
            
            <button type="submit">Filtrar por aluno</button><br /><br />
        </form>
        
        <form action="BuscaServlet" method="post">
            Filtrar por professor:
            <select name="filtro_prof">
                <c:forEach var="professor" items="${professores}">
                    <option>${professor.nome}</option>
                </c:forEach>
            </select>
            
            <button type="submit">Filtrar por aluno</button><br /><br />
        </form>
        <form action="BuscaServlet" method="post">
            Filtrar por grupo:
            <select name="filtro_grupo">
                <option value="1">Grupo 1</option>
                <option value="2">Grupo 2</option>
                <option value="3">Grupo 3</option>
                <option value="4">Grupo 4</option>
            </select>
            
            <button type="submit">Filtrar por aluno</button><br /><br />
        </form>
        <br />
        
        <h1>${aluno_filtrado.nome}</h1>
        <h2>${aluno_filtrado.id}</h2>
        
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
        </table><br />
        <a href="index.html">Página Principal</a>
        </div>
    </center>
    </body>
</html>
