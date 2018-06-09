

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="pacote.SessaoUsuario"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div
		style="width: 720px; height: 373px; background-color: white; margin-left: 20%; margin-right: 40%; border-radius: 5px; padding: 5px; margin-left: 5%; border-color: black; border-style: solid; border-width: 2px;">

		<div>
			Obrigado </br> </br>
		</div>
		<div style="text-align: center; font-weight: 800">

			Tempo de conversa: <%
			SessaoUsuario sesseao = (SessaoUsuario) session.getAttribute("SessaoUsuario");

			out.println(sesseao.getTempoSessao());
		%>s
			</br>

		</div>

		<div class="bot"
			style="text-align: left; margin-top: 38%; margin-left: 75%; color: black; position: relative;">

			<li class="page-scroll"><a href="home.html">Voltar para
					pagina inicial</a></li>

		</div>
	</div>
</body>
</html>
