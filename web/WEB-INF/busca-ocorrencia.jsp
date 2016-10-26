<%-- 
    Document   : busca-ocorrencia
    Created on : 20/09/2016, 20:18:50
    Author     : aluno
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Busca de Ocorrências</title>
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
                <ul>
                    <li><a href="TotaisPorGrupo">Totais</a></li>
                </ul>
            </div>

            <!-- Conteudo da PÃ¡gina -->
            <div id="conteudo">
                    <h1>Ocorrências: </h1>

                    <h3>Filtros aplicáveis:</h3>
                    <table>
                        <tr>
                            <form action="BuscaServlet" method="post">
                                <td>Filtrar por aluno:</td>
                                <td>
                                    <select name="filtro_aluno">
                                        <c:forEach var="aluno" items="${alunos}">
                                            <option value="${aluno.id}">${aluno.nome}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                                <td><button type="submit">Filtrar por aluno</button></td>
                            </form>
                        </tr>
                        
                        <tr>
                        <form action="BuscaServlet" method="post">
                            <td>Filtrar por professor:</td>
                            <td>
                                <select name="filtro_prof">
                                    <c:forEach var="professor" items="${professores}">
                                        <option value="${professor.id}">${professor.nome}</option>
                                    </c:forEach>
                                </select>
                            </td>
                            <td><button type="submit">Filtrar por professor</button></td>
                        </form>
                        </tr>
                        
                    </table>
                    <br />

                    <h3>Ocorrências:</h3>

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
            </div>

            <!-- RodapÃ© da PÃ¡gina -->
            <div id="rodape">
                Produzido por: <a href="mailto:luiz.santos89@yahoo.com.br">Luiz Santos</a> e  
                <a href="mailto:je_barbosaa@hotmail.com">Jéssica Barbosa</a><br />
            </div>
        </div>
        </center>
    </body>
</html>