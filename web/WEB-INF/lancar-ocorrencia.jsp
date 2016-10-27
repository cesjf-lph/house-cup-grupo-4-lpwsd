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
                <div id="conteudo_pagina">
                    <h1>Lançar uma nova ocorrência:</h1>
                    <table>
                    <form action="OcorrenciaServlet" method="post">
                        <tr>
                            <td>Aluno: </td>
                            <td>
                                <select name="aluno">            
                                    <c:forEach var="aluno" items="${alunos}">
                                        <option value="${aluno.id}">${aluno.nome} - Grupo: ${aluno.grupo}</option>
                                    </c:forEach>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Professor:</td>
                            <td>
                                <select name="professor">
                                    <c:forEach var="professor" items="${professores}">
                                        <option value="${professor.id}">${professor.nome}</option>

                                    </c:forEach>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Nota: </td>
                            <td><input type="text" size="4" name="nota" /></td>
                        </tr>
                        <tr>
                            <td>Motivo: </td>
                            <td><input type="text" size="20" name="motivo" />  </td>                      
                        </tr>
                        <tr>
                            <td><button type="submit">Lançar</button></td>
                            <td><button type="reset">Limpar</button></td>
                        </tr>
                    </form>
                    </table>
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