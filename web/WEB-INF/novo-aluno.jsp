<html>
    <head>
        <meta charset="UTF-8">
        <title>Cadastro de Alunos</title>
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
                    <h1>Cadastrar alunos</h1>
                    <table>
                        <form action="AlunoServlet" method="post">
                            <tr>
                                <td>Nome </td>
                                <td><input type="text" name="nome" /></td>
                            </tr>                
                            <tr>
                                <td>Grupo </td>
                                <td>
                                    <select name="grupo">
                                        <option value='1'>1</option>
                                        <option value='2'>2</option>
                                        <option value='3'>3</option>
                                        <option value='4'>4</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td><button type="submit">Enviar</button> </td>
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
