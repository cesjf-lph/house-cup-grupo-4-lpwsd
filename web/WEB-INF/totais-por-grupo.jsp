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
                <h1>Totais de pontos por grupo:</h1>
                <table>
                    <form action="TotaisPorGrupo" method="post">
                        <h3>Filtros aplicáveis: </h3>
                        <tr>
                            <td>
                                Mês inicial:
                            </td>
                            <td>
                                <select name="mes_inicial">
                                    <option value="01">01</option>
                                    <option value="02">02</option>
                                    <option value="03">03</option>
                                    <option value="04">04</option>
                                    <option value="05">05</option>
                                    <option value="06">06</option>
                                    <option value="07">07</option>
                                    <option value="08">08</option>
                                    <option value="09">09</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </td>
                            <td>
                                Ano inicial:
                            </td>
                            <td>
                                <select name="ano_inicial">
                                    <option value="2010">2010</option>
                                    <option value="2011">2011</option>
                                    <option value="2012">2012</option>
                                    <option value="2013">2013</option>
                                    <option value="2014">2014</option>
                                    <option value="2015">2015</option>
                                    <option value="2016">2016</option>
                                </select>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Mês final:
                            </td>
                            <td>
                                <select name="mes_final">
                                    <option value="01">01</option>
                                    <option value="02">02</option>
                                    <option value="03">03</option>
                                    <option value="04">04</option>
                                    <option value="05">05</option>
                                    <option value="06">06</option>
                                    <option value="07">07</option>
                                    <option value="08">08</option>
                                    <option value="09">09</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </td>
                            <td>
                                Ano final:
                            </td>
                            <td>
                                <select name="ano_final">
                                    <option value="2010">2010</option>
                                    <option value="2011">2011</option>
                                    <option value="2012">2012</option>
                                    <option value="2013">2013</option>
                                    <option value="2014">2014</option>
                                    <option value="2015">2015</option>
                                    <option value="2016">2016</option>
                                </select>
                            </td>
                            <td>
                                <button type="submit">Ok</button>
                            </td>
                        </tr>
                    </form>
                </table>

                <br /><br />

                <table border="1">
                    <tr>
                        <th colspan="4">Totais por Grupo: </th>
                    </tr>
                    <tr>
                        <th>Grupo</th>
                        <th>Pontos</th>
                    </tr>
                    
                        <c:forEach var="pontosPorGrupo" items="${pontos}">
                            <tr>    
                                <td>${pontosPorGrupo[1]}</td>
                                <td>${pontosPorGrupo[0]}</td>
                            </tr>
                        </c:forEach>
                   
                </table>
                <br /><br />
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