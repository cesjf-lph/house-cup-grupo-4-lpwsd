<%-- 
    Document   : detalhes-aluno
    Created on : 30/08/2016, 21:39:19
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
        <h1>Detalhes do Aluno: </h1>
        <h2>Nome: ${aluno.nome}</h2>
        <h2>Grupo: ${aluno.grupo}</h2>
        <h2>Nota: ${aluno.nota}</h2>
        
        <a href="novo-aluno.jsp">Cadastrar outro aluno</a>
    </body>
</html>
