<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <div id="pagina">
            <table>
                <form action="AlunoServlet" method="post">
                    <tr>
                        <td>Aluno: </td>
                        <td>
                            <select>
                                <option>Aluno 1</option>
                                <option>Aluno 2</option>
                                <option>Aluno 3</option>
                                <option>Aluno 4</option>
                                <option>Aluno 5</option>
                            </select>
                        </td>
                    </tr>
                </form>
            </table>
        </div>
    </center>
    </body>
</html>
