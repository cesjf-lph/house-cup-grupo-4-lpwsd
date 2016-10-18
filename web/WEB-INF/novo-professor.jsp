<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Professor:</title>
        <link rel="stylesheet" href="estilo.css" />
    </head>
    <body>
    <center>
        <div id="pagina">
        <h1>Cadastrar professores</h1>
        <table>
            <form action="ProfessorServlet" method="post">
                <tr>
                    <td>Nome </td>
                    <td><input type="text" name="nome_professor" /></td>
                </tr>  
                <tr>
                    <td><button type="submit">Enviar</button> </td>
                    <td><button type="reset">Limpar</button></td>
                </tr>  
                
            </form>
        </table><br />
        <a href="index.html">Página Principal</a>
        </div>
    </center>
    </body>
</html>
