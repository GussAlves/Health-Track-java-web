<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="pt-br">
<head>
<jsp:include page="resources/asset-bootstrap.jsp" />
<jsp:include page="resources/asset-graph.jsp" />
<title>Dashboard</title>
</head>
<!-- Final da Head  -->

<!-- In�cio do body-->
<body class="vsc-initialized">

	<!-- In�cio da header est�o nesta div navbar e os icons da navbar-->

	<header>
		<!-- In�cio da header est�o nesta div navbar e os icons da navbar-->
		<jsp:include page="resources/asset-navbar.jsp" />
		<!-- Breadcrumb -->
		<ol class="breadcrumb">
		</ol>

	</header>
	<!-- Encerramento da header-->

	<!-- Rela��o de atividades dispon�veis-->
	<main>
		<br>
		<!-- Div que inic�a o card maior da tela-->
		<div class="card card-dash-big">
			<div class="card-columns card-columns-dash">
				<!-- In�cio do card-collums-->

				<!-- inicio cartao atividade-->
				<div class="card card-dash">
					<div class="card-body">

						<img src="img/run2.png" alt="run" class="run-icon">

						<h4 class="card-title title-dash">ULTIMA ATIVIDADE</h4>
						<p class="card-dias">Corrida</p>
						<p class="card-distancia">Dist�ncia: 2km</p>
						<p class="card-tempo">Tempo: 15min</p>
						<p class="card-pace">Pace: 7:30 km/h</p>

						<a class="btn btn-success btn-centralizar btn-dash"
							href="atividades.jsp">Atividades</a>
					</div>
				</div>
				<!-- fim do cart�o atividade -->

				<!-- inicio cartao Sa�de-->
				<div class="card card-dash">
					<div class="card-body">

						<img src="img/diet.png" alt="run" class="run-icon">

						<h4 class="card-title title-dash">SUA DIETA</h4>
						<p class="card-text">Dieta: 200 cal/dia</p>
						<p class="card-text">Objetivo : Ganho de massa magra</p>
						<p class="card-text">Refei��es por dia: 5</p>
						<p class="card-text">Dias de dieta: 30 dias</p>

						<a class="btn btn-success btn-centralizar btn-dash"
							href="refeicao.jsp">Dieta</a>
					</div>
				</div>
				<!-- fim do cart�o Sa�de -->


				<!-- inicio cartao Sa�de-->
				<div class="card card-dash">
					<div class="card-body">

						<img src="img/bmi.png" alt="run" class="run-icon">

						<h4 class="card-title title-dash">SUA SA�DE</h4>
						<p class="card-text">Peso: 78kg</p>
						<p class="card-text">Altura: 190 cm</p>
						<p class="card-text">IMC: 23.30</p>
						<p class="card-text">Situa��o: Obeso</p>
						<a class="btn btn-success btn-centralizar btn-dash"
							href="saude.jsp">Sa�de</a>
					</div>
				</div>
				<!-- fim do cart�o Sa�de -->
	</main>
	<footer>
		<div class="canva-model card-columns card-columns-dash">
			<canvas id="canvas" class="chartjs-render-monitor btn-centralizar"></canvas>
		</div>
	</footer>
<jsp:include page="resources/asset-jquerry.jsp" />
</body>
</html>