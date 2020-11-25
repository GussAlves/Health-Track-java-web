<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<!-- Required meta tags -->
<jsp:include page="resources/asset-bootstrap.jsp" />
<title>Login</title>
</head>
<!-- Final da head-->
<body>
	<br>
	<br>
	<br>
	<!-- a imagem da logo foi inserida no header-->
	<header>
		<figure class="">
			<img src="img/logo-nova.png" alt="logo health track"
				class='login_centralizar logo-login'>
		</figure>

	</header>
	<!-- Encerramento da header-->
	<main class="alinhamento-login">
		<!-- Div de formulário padrão tipo  ou vertical -->
		<!-- formulários  classe: form-control-<opcoes> opções: sm, lg  -->
		<form action='dashboard.jsp' method='get'>
			<div class='form-group tela-login'>
				<!-- Início da div de input e-mail-->
				<label for='e-mail-usuario'>E-mail</label> <input
					class='form-control col-6' type="email"
					placeholder="Digite seu login ou e-mail" required='required'>
				<!--Exemplo de Input com informação de validação tipo e-mail valid. Class is-valid   -->
			</div>

			<div class='form-group tela-login'>
				<!-- Início da div de input senha-->

				<label for="senha-usuario">Senha</label>

				<!--Exemplo de Input com informação de validação tipo is-invalid. Class is-invalid   -->
				<input class='form-control col-6' type="password" id="senha-usuario"
					placeholder="Digite sua senha" required='required'>

				<!-- Input do tipo checkbox exemplo de input disbilitado "disabled"-->
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="manterlogado" disabled> <label
						class="form-check-label" for="manterlogado"> Manter
						logado? </label>
				</div>

				<!-- Esqueceu sua senha? Falta adicionar link reenvio de e-mail-->
				<a rel='stylesheet' href="">Esqueceu sua senha? </a>
			</div>
			<!-- Final da div de input senha-->

			<!-- Botão de entrar -->

			<a href="dashboard.jsp"> <input
				class='btn btn-centralizar btn-outline-info' type="submit"
				value="ENTRAR">
			</a>


		</form>
		<!-- Final do formulário de login-->

		<!-- Formulário de redirecionamento do botão NOVO USUÀRIO-->
		<br> <a href="usuario.jsp"><input
			class='btn btn-outline-success btn-centralizar' type="submit"
			value="NOVO USUÁRIO"></a>
		</div>
	</main>
<jsp:include page="resources/asset-jquerry.jsp" />
</body>
</html>