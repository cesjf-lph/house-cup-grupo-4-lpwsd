<html>
    <head>
        <meta charset="UTF-8">
        <title>Detalhes do aluno ${aluno.nome}</title>
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
                    <h1>Detalhes do Aluno: </h1>
                    <h2>Nome: ${aluno.nome}</h2>
                    <h2>Grupo: ${aluno.grupo}</h2>
                    <h2>Nota: ${aluno.nota}</h2>
                    <br /><br />
                    <a href="novo-aluno.jsp">Cadastrar outro aluno</a><br />
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