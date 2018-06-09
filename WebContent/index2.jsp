<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>

<h1 style="text-align: center;">Chat de Atendimento<br></h1>
<form action="Ingreso" method="post">
    <table style="margin: auto">
        <tr>
            <td>Nome</td>
            <td>
                <input type="text" name="nick" value="${cliente.nome }" readonly="true"/></td>
        </tr>
        <tr>
            <td>Cor</td>
            <td>
                <select name="color">
                    <option value="#900">Rojo</option>
                    <option value="#090">Verde</option>
                    <option value="#009">Azul</option>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <input type="submit" value="Enviar Dados"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
