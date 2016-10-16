<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Aluno: </title>
        <link rel="stylesheet" href="estilo.css" />
    </head>
    <body>
    <center>
        <div id="pagina">
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
        
        <a href="OcorrenciaServlet">Lançar ocorrência</a>
        <a href="index.html">Página Principal</a>
        </div>
    </center>
    </body>
</html>
