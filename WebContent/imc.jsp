<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<head>
<jsp:include page="resources/asset-bootstrap.jsp" />
<script type="text/javascript" src="js/imc.js"></script>
<title>IMC</title>
</head>
<!-- Final da head-->
<!-- Início do body-->
<body>
	<!-- Coloquei na header a navbar-->

	<header>
		<jsp:include page="resources/asset-navbar.jsp" />
		<!-- Breadcrumb -->
		<ol class="breadcrumb">
		</ol>

	</header>
	<!-- Encerramento da header-->

	<main>
		<div class="container">
			<!-- Inicio div container-->
			<div class="card ">
				<!-- Div que inicía o card da tela-->
				<figure class='card-header'>
					<!-- Iníc do card-header -->
					<img class="card-img-bottom" src="img/imc.jpg">
				</figure>

				<div class="card-body ">
					<!-- Iníco do card-header -->
					<h5 class="card-subtitle">IMC: Qual é a sua importância?</h5>
					<br>
					<p class="card-text">A medida permite identificar transtornos
						nutricionais e ajuda a diagnosticar mais rapidamente fatores que
						expõem o paciente ao maior risco de doenças cardiovasculares,
						diabetes e síndrome metabólica, por exemplo, sem ser necessário
						qualquer exame laboratorial oneroso.</p>
					<h6>Vamos calcular seu IMC:</h6>

					<div class="card-body">
						
						<c:if test="${not empty msg }">
							<div class="alert alert-success">${msg }</div>
						</c:if>
						<c:if test="${not empty erro }">
							<div class="alert alert-danger">${erro }</div>
						</c:if>
						<form method="post" action="saude" name="bmiForm">
							<input type="hidden" name="acao" value="cadastrar">
						
							<label for="weight">Seu Peso(kg): </label> 
							<input class="form-control imc-control" type="text" name="weight"
								size="10" placeholder="Digite seu peso" id="valor"> <br>
							
							<label for="height ">Sua Altura(cm)</label> 
							<input class="form-control imc-control" type="text" name="height"
								size="10" placeholder="Digite sua altura"> 
								
							<input class="btn btn-outline-info btn-calcular btn-centralizar"
								type="button" value="Calcular IMC" onClick="calculateBmi()"><br>
								 
							<label for="bmi ">Seu IMC:</label> 
							<input class="form-control imc-control" type="text" name="bmi"
								size="10"> <br> 
								
							<label for="bmi ">Situação:</label>
							<input class="form-control imc-control" type="text"
								name="meaning" size="25" name="situacao">


							<div>
								<input class="btn btn-outline-info btn-calcular btn-centralizar"
									type="reset" value="Apagar" /> 
								<input class="btn btn-outline-info btn-calcular btn-centralizar"
									type="submit" value="Gravar" />
							</div>

						</form>
					</div>
				</div>

					<div class="table">
						<table class="table styled-table">
							<thead>
								<tr>
									<th scope="col">Data</th>
									<th scope="col">Peso (Kg)</th>
									<th scope="col">Altura (cm)</th>
									<th scope="col">Seu IMC</th>
									<th scope="col">Situação</th>

								</tr>
							</thead>
							<tbody>
									<tr>
						                <td class ="tabela">22/10/2020</td>
						                <td class ="tabela">83,00 Kg</td>
						                <td class ="tabela">1,82 Metros</td>
						                <td class ="tabela">25.06</td>
						                <td class ="tabela">Sobrepeso</td>
						             </tr>							
							</tbody>
						</table>
					</div>

			</div>
			<!-- Fechament da Div "card"-->
		</div>
		<!-- Fechament da Div "Container"-->
	</main>
	<jsp:include page="resources/asset-jquerry.jsp" />
</body>
</html>