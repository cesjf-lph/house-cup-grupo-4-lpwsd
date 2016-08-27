<%-- 
    Document   : novo-aluno
    Created on : 16/08/2016, 21:33:32
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            html {
                width: 100%;
                height: 100%;   
                background: gray;
            }
            
            #pagina {
                width: 900px;
                text-align: justify;
                background-color: white;
                border-radius: 16px;
                padding: 20px;
                font-family: "Century Gothic",Arial;
                font-size: 16pt;
                line-height: 1.5em;
            }
            
        </style>
    </head>
    
    <body>
    <center>
        <div id="pagina">
            <form action="aluno.html" method="get">
                <table>
                    <tr>
                        <td colspan="2"><h2>Cadastro de aluno: </h2></td>
                    </tr>
                    <tr>
                        <td>Nome: </td>
                        <td><input type="text" name="nome" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Endereço: </td>
                        <td><input type="text" name="endereco" size="30" /></td>
                    </tr>
                    <tr>
                        <td>E-mail: </td>
                        <td><input type="text" name="email" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Sexo:</td>
                        <td>
                            <select name="sexo">
                                <option value="1">Feminino</option>
                                <option value="2">Masculino</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Grupo:</td>
                        <td>
                            <select name="grupo">
                                <option value="1">Grupo 1</option>
                                <option value="2">Grupo 2</option>
                                <option value="3">Grupo 3</option>
                                <option value="4">Grupo 4</option>
                            </select>
                        </td>
                    </tr>
                    
                    <tr>
                        <td><button type="reset">Limpar</button></td>
                        <td><button type="submit">Enviar</button></td>
                    </tr>
                </table>
            </form>
        </div>
    </center>
    </body>
</html>
