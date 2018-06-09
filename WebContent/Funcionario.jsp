<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

 <title>Login Funcionario</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>
<body background="img/books.jpg">
	
					
                

	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand p1" href="home.html">Cartório</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="page-scroll">
                        <a href="home.html">Página Inicial</a>
                    </li>   
                </ul>
            </div>
        </div>
    </nav>

	 <section id="contact">
        <div class="container">
		            <div class="row">
                <div class="col-lg-12 text-center">
                    <font color="white">
					<h2>Login</h2>
					</font>
					<form action="controller.do" method="post">
						<hr class="star-primary">
                </div>
            </div>
					
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">				 
								<font color="white">
									<label>Nome</label>
								</font>
                                <input type="text" class="form-control" placeholder="Digite seu Nome" name="username" id="username">
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
								<font color="white">
									<label>Senha</label>
								</font>
					   <input type="password" name="passwd" id="passwd" class="form-control" placeholder="Senha" required/>
                            </div>
                        </div>
						<div id="success">
                        	<div class="row"><center>
                            	<div class="form-group col-xs-12">
                                <button type="submit" class="btn btn-success btn-lg"name="command" value="VerificarFuncionario">Enviar</button>	
                                                    <a href="home.html" class="btn btn-default">Cancelar</a>                  
                            	</div></center>
                        	</div>
						</div>
					</form>
				</div>                    
            </div>
            </form>
            
            </div>        
    </section>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
