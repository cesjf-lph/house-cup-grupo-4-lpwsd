<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Lançar Ocorrência</title>
        <link rel="stylesheet" type="text/css" href="estilo.css" />
    </head>
    <body>
        <center>
        <div id="pagina">
            <div id="menus">
                <ul>
                    <li><a href="index.html">Principal</a></li>
                </ul>
                <ul>
                    <li><a href="AlunoServlet">Cadastro de Alunos</a></li>
                </ul>
                <ul>
                    <li><a href="ProfessorServlet">Cadastro de Professores</a></li>
                </ul>
                <ul>
                    <li><a href="OcorrenciaServlet">Lançar Ocorrência</a></li>
                </ul>
                <ul>
                    <li><a href="BuscaServlet">Buscar Ocorrência</a></li>
                </ul>
            </div>

            <!-- Conteudo da PÃ¡gina -->
            <div id="conteudo">
                <div id="conteudo_pagina">
                    <h1>Lançar uma nova ocorrência:</h1>
                    <form action="OcorrenciaServlet" method="post">
                        Aluno: 
                        <select name="aluno">            
                            <c:forEach var="aluno" items="${alunos}">
                                <option value="${aluno.id}">${aluno.nome} - Grupo: ${aluno.grupo}</option>
                            </c:forEach>
                        </select>
                        <br />
                        Professor:
                        <select name="professor">
                            <c:forEach var="professor" items="${professores}">
                                <option value="${professor.id}">${professor.nome}</option>

                            </c:forEach>
                        </select>
                        <br />
                        Nota: <input type="text" size="4" name="nota" />
                        Motivo: <input type="text" size="20" name="motivo" />                        
                        <br />
                        <button type="submit">Lançar</button>
                        <button type="reset">Limpar</button>
                    </form>
                    <br /><br />
                    <a href="index.html">Página Principal</a>
                </div>
            </div>

            <!-- RodapÃ© da PÃ¡gina -->
            <div id="rodape">
                Produzido por: <a href="mailto:luiz.santos89@yahoo.com.br">Luiz Santos</a> e  
                <a href="je_barbosaa@hotmail.com">Jéssica Barbosa</a><br />
            </div>
        </div>
        </center>
    </body>
</html>