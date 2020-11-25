<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="pt-br">
<head>
<jsp:include page="resources/asset-bootstrap.jsp" />
<title>Atividades</title>
</head>
<!-- Final da Head  -->

<!-- In�cio do body-->
<body>

	<!-- In�cio da header est�o nesta div navbar e os icons da navbar-->

	<header>
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
		<div class="card bg-ligth card-atv">

			<!-- Div que inic�a o cardheader onde est�o os links para acesso as demais op��es-->
			<div class="card-header">

				<!-- "ul" que inic�o card-header-->
				<ul class="nav nav-tabs">
					<li class="nav-item"><a id="alongamentos"
						class="nav-link active" href="">Alongamentos</a></li>
					<li class="nav-item"><a id="atividadefisica" class="nav-link"
						href="">Atividade f�sica</a></li>
					<li class="nav-item"><a id="corrida" class="nav-link" href="">Corrida</a>
					</li>
					<li class="nav-item"><a id="meditacao" class="nav-link"
						href="">Medita��o</a></li>
				</ul>
				<!-- "ul" que fecha card-header-->

			</div>
			<!-- Fechamento da div card-header-->
			<!-- Inicio do card body-->
			<div class="card-body card-exercicios mt-3px">

				<div id="carouselExampleControls" class="carousel slide"
					data-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<figure>
								<img src="img/alongamento1.jpg" alt="refei��o">
							</figure>
						</div>
						<div class="carousel-item">
							<figure>
								<img src="img/alongamento4.jpg" alt="refei��o">
							</figure>
						</div>
						<div class="carousel-item">
							<figure>
								<img src="img/alongamento3.jpg" alt="refei��o">
							</figure>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleControls"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleControls"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>


				<h4 class="card-title">V�rios alongamentos para voc�!</h4>
				<h6 class="card-subtitle">Conhe�a nossas dicas e op��es de
					alongamentos</h6>
				<p class="card-text">Op��es para relaxar sua musuculatura, de
					forma localizada evitando v�rios tipos de les�es</p>
				<a class="btn btn-outline-info btn-block" href="">Come�ar</a>
			</div>
		</div>
		<!-- Fechamento do card body-->

		<br>
		<div class="card-columns card-trasnparent">
			<!-- In�cio do card-collums-->

			<!-- inicio cartao medita��o-->
			<div class="card card-atv">
				<div class="card-body">
					<figure>
						<img src="img/metidacao.jpg" alt="Medita��o">
					</figure>
					<h4 class="card-title">Medita��o</h4>
					<h6 class="card-subtitle">Conhe�a nossas medita��es guiadas</h6>
					<p class="card-text">Uma s�rie de medita��es pra voc� relaxar</p>
					<a class="btn btn-outline-info btn-centralizar" href="">Come�ar</a>
				</div>
			</div>
			<!-- fim do cart�o medita��o -->

			<!-- in�cio do cart�o corrida -->
			<div class="card card-atv">
				<div class="card-body">
					<figure>
						<img src="img/corrida.jpg" alt="corrida">
					</figure>
					<h4 class="card-title">Corrida</h4>
					<h6 class="card-subtitle">Informe sobre suas corridas e
						descubra como est� sua evolu��o</h6>
					<p class="card-text">Controles personalizados para voc�
						registrar sua corrida e saber informa��es do seu desempenho nas
						pistas</p>
					<a class="btn btn-outline-info btn-centralizar" href="">Come�ar</a>
				</div>
			</div>
			<!-- fechamento do cart�o corrida -->

			<div class="card card-atv">
				<!-- in�cio do cart�o atividade -->
				<div class="card-body">
					<figure>
						<img src="img/exercicios.jpg" alt="atividade">
					</figure>
					<h4 class="card-title">Atividade f�sica</h4>
					<h6 class="card-subtitle">Conhe�a nossos treinos montados por
						especialistas</h6>
					<p class="card-text">Uma gama de treinos para voc� manter a
						forma f�sica em qualquer lugar</p>
					<a class="btn btn-outline-info btn-centralizar" href="">Come�ar</a>
				</div>
			</div>
			<!-- fechamento do cart�o atividade -->
		</div>
		<!-- Fechamento do card-collums-->
	</main>
<jsp:include page="resources/asset-jquerry.jsp" />
</body>
</html>