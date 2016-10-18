<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lançar ocorrência</title>
        <link rel="stylesheet" href="estilo.css" />
    </head>
    <body>
    <center>
        <div id="pagina">
        <h1>Lançar uma nova ocorrência:</h1>
        <form action="OcorrenciaServlet" method="post">
            Aluno: 
            <select name="aluno">            
                <c:forEach var="aluno" items="${alunos}">
                    <option value="${aluno.id}">${aluno.nome} - Grupo: ${aluno.grupo}</option>
                </c:forEach>
            </select>
            Professor:
            <select name="professor">
                <c:forEach var="professor" items="${professores}">
                    <option value="${professor.id}">${professor.nome}</option>

                </c:forEach>
            </select>
            Nota: <input type="text" size="4" name="nota" />
            Motivo: <input type="text" size="20" name="motivo" />
            <button type="submit">Lançar</button>
            <button type="reset">Limpar</button>
        </form>
        <br /><br />
        <a href="index.html">Página Principal</a>
        </div>
    </center>
    </body>
</html>
