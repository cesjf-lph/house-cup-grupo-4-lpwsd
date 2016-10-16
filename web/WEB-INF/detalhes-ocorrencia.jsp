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
        <title>Detalhes da Ocorrência</title>
        <link rel="stylesheet" href="estilo.css" />
    </head>
    <body>
    <center>
        <div id="pagina">
        <p>
            <h1>Detalhes da Ocorrencia: </h1>
            <h2>Aluno: ${ocorrencia.aluno.nome}</h2>
            <h2>Professor: ${ocorrencia.professor.nome}</h2>
            <h2>Pontos: ${ocorrencia.pontos}</h2>
            <h2>Motivo: ${ocorrencia.motivo}</h2>
            
        </p>
        <a href="OcorrenciaServlet">Nova ocorrência</a>
        <a href="index.html">Página Principal</a>
        </div>
    </center>
    </body>
</html>
