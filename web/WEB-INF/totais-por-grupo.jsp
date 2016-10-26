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
        <script language="javascript">
            function mascaraData( campo, e )
                {
                    var kC = (document.all) ? event.keyCode : e.keyCode;
                    var data = campo.value;

                    if( kC!=8 && kC!=46 )
                    {
                        if( data.length==2 )
                        {
                            campo.value = data += '/';
                        }
                        else if( data.length==5 )
                        {
                            campo.value = data += '/';
                        }
                        else
                            campo.value = data;
                    }
                }
        </script>
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
                <h1>Totais de pontos por grupo:</h1>

                <table>
                    <form action="TotaisPorGrupo" method="post">
                        <tr>
                            <th>Data Inicial:</th>
                            <th>Data Final:</th>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" size="10" maxlength="10" onkeypress="mascaraData( this, event )" />
                            </td>
                            <td>
                                <input type="text" size="10" maxlength="10"  onkeypress="mascaraData( this, event )" />
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
                        <tr>    <td>${pontosPorGrupo[1]}</td>
                            <td>${pontosPorGrupo[0]}</td> </tr>
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