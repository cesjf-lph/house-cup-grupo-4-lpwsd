<%-- 
    Document   : detalhes-aluno
    Created on : 16/08/2016, 21:15:12
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
        <h2>Endereço: ${aluno.endereco}</h2>
        <h2>E-mail: ${aluno.email}</h2>
        <h2>Sexo: ${aluno.sexo}</h2>
        
    </body>
</html>
