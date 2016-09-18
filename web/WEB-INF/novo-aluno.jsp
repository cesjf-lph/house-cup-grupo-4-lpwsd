<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
        
        <a href="OcorrenciaServlet">Lançar nota</a>
    </body>
</html>
