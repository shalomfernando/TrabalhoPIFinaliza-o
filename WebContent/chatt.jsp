<page contentType="text/html" pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<%@ page import="pacote.SessaoUsuario"%>
		<%
	SessaoUsuario sesseao = new SessaoUsuario();

    String sala = (String) application.getAttribute("sala");
%>
		<% response.setIntHeader("Reflesh", 5); %>
	<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="refresh" content="20"/>
		<title>JSP Page</title>
		<style type="text/css">
			#sala {
				margin: auto;
				border: 1px solid #999;
				padding: 6px;
				overflow: auto;
				width: 300px;
				height: 100px;
			}
		</style>

		<script type="text/javascript">
            function load() {
                document.getElementById("msg").focus();
            }
		</script>
	</head>
	<body onload="load()">
	<div id="sala"><%=sala%></div>

	<form action="Chatt" method="post" style="text-align: center">
		<input type="text" name="msg" style="width: 244px" id="msg"/>
		<input type="submit" value="Enviar" style="width: 60px"/>


	</form>
	<form action="controller.do" method="post">
		<button class="btn btn-primary" type="submit" name="command"
				value="Finalizar">Sair da conversa</button>
	</form>

	</body>
	</html>
