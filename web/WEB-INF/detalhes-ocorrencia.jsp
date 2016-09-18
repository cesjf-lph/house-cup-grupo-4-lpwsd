<%-- 
    Document   : detalhes-ocorrencia
    Created on : 16/09/2016, 21:44:11
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
        <p>
            <h1>Detalhes do Aluno: </h1>
            <h2>Aluno: ${ocorrencia.aluno}</h2>
            <h2>Professor: ${ocorrencia.professor}</h2>
            <h2>Pontos: ${ocorrencia.pontos}</h2>
            <h2>Motivo: ${ocorrencia.motivo}</h2>
            <h2>Data: ${ocorrencia.data}</h2>
            
        </p>
    </body>
</html>
