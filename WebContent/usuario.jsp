<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<jsp:include page="resources/asset-bootstrap.jsp" />
<title>Usu�rio</title>
</head>
<!-- Final da head-->
<body>
	<!-- Coloquei na header a navbar-->

	<header>
		<!-- In�cio da header est�o nesta div navbar e os icons da navbar-->
		<jsp:include page="resources/asset-navbar.jsp" />
		<!-- Breadcrumb -->
		<ol class="breadcrumb">
		</ol>
	</header>
	<!-- Encerramento da header-->
	<main>
		<div class='form-inline'>
			<form action='atividades.jsp' method='get'>
				<input class='form-control' type="text"
					placeholder="Digite seu nome" required='required'> <input
					class='form-control' type="text" placeholder="Digite seu sobrenome"
					required='required'>
		</div>
		<br>

		<!-- caixas de texto input tipo usu�rio -->
		<div class='form-group'>
			<label for="usuario">Usu�rio</label> <input class='form-control'
				type="text" placeholder="Digite seu usu�rio" required='required'>
		</div>
		<!-- caixas de texto input tipo e-mail (email) -->
		<div class='form-group'>
			<label for='e-mail-usuario'>E-mail</label> <input
				class='form-control' type="email" placeholder="Digite seu e-mail"
				required='required'>
		</div>
		<!-- caixas de texto input tipo senha (password) -->
		<div class='form-group'>
			<label for="senha-usuario">Senha</label> <input class='form-control'
				type="password" placeholder="Digite sua senha" required='required'>
		</div>
		<!-- select input tipo sexo-->
		<div class='form-group'>
			<label for="sexo">Sexo</label> <select class='form-control' id="sexo">
				<option>Masculino</option>
				<option>Feminino</option>
			</select>
		</div>
		<!-- select input tipo estados -->
		<div class='form-group'>
			<label for="estados">Estado</label> <select class='form-control'
				id="estados">
				<option>Pernambuco</option>
				<option>S�o paulo</option>
				<option>Rio de janeiro</option>
				<option>...</option>
			</select>
		</div>
		<!-- select input tipo cidade -->
		<div class='form-group'>
			<label for="cidades">Cidade</label> <select class='form-control'
				id="cidades">
				<option>Recife</option>
				<option>Olinda</option>
				<option>Caruaru</option>
				<option>...</option>
			</select>
		</div>
		<!-- range - marcador de satisfa��o -->
		<div class='form-group'>
			<label id="range">
				<h5>Como voc� esta cuidando da sua sa�de atualmente?</h5>
				<h6>(In�cio da barra nota 1 e final da barra � nota 10)</h6>
			</label> <input class='custom-range' type="range" id="range" min="1" max="10">
		</div>

		<!-- Linha dos bot�es de editar e cadastrar, cores para bot�es padr�o ( Info e Warning) outra op��es: primary , secondary, danger, dark, light, success....  -->
		<br>
		<div class='mr-4'>
			<ul class="row">
				<ol class='col-6'>
					<input class='form-item btn btn-outline-warning btn-block'
						type="submit" value="EDITAR">
				</ol>
				<ol class='col-6'>
					<input class='form-item btn btn-outline-info btn-block'
						type="submit" value="CADASTRAR">
				</ol>
			</ul>
		</div>
		</form>
	</main>
<jsp:include page="resources/asset-jquerry.jsp" />
</body>
</html>