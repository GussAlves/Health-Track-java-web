<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="pt-br">
<head>
<jsp:include page="resources/asset-bootstrap.jsp" />
<title>Atividades</title>
</head>
<!-- Final da Head  -->

<!-- Início do body-->
<body>

	<!-- Início da header estão nesta div navbar e os icons da navbar-->

	<header>
		<jsp:include page="resources/asset-navbar.jsp" />
		<!-- Breadcrumb -->
		<ol class="breadcrumb">
		</ol>

	</header>
	<!-- Encerramento da header-->

	<!-- Relação de atividades disponíveis-->
	<main>
		<br>
		<!-- Div que inicía o card maior da tela-->
		<div class="card bg-ligth card-atv">

			<!-- Div que inicía o cardheader onde estão os links para acesso as demais opções-->
			<div class="card-header">

				<!-- "ul" que inicío card-header-->
				<ul class="nav nav-tabs">
					<li class="nav-item"><a id="alongamentos"
						class="nav-link active" href="">Alongamentos</a></li>
					<li class="nav-item"><a id="atividadefisica" class="nav-link"
						href="">Atividade física</a></li>
					<li class="nav-item"><a id="corrida" class="nav-link" href="">Corrida</a>
					</li>
					<li class="nav-item"><a id="meditacao" class="nav-link"
						href="">Meditação</a></li>
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
								<img src="img/alongamento1.jpg" alt="refeição">
							</figure>
						</div>
						<div class="carousel-item">
							<figure>
								<img src="img/alongamento4.jpg" alt="refeição">
							</figure>
						</div>
						<div class="carousel-item">
							<figure>
								<img src="img/alongamento3.jpg" alt="refeição">
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


				<h4 class="card-title">Vários alongamentos para você!</h4>
				<h6 class="card-subtitle">Conheça nossas dicas e opções de
					alongamentos</h6>
				<p class="card-text">Opções para relaxar sua musuculatura, de
					forma localizada evitando vários tipos de lesões</p>
				<a class="btn btn-outline-info btn-block" href="">Começar</a>
			</div>
		</div>
		<!-- Fechamento do card body-->

		<br>
		<div class="card-columns card-trasnparent">
			<!-- Início do card-collums-->

			<!-- inicio cartao meditação-->
			<div class="card card-atv">
				<div class="card-body">
					<figure>
						<img src="img/metidacao.jpg" alt="Meditação">
					</figure>
					<h4 class="card-title">Meditação</h4>
					<h6 class="card-subtitle">Conheça nossas meditações guiadas</h6>
					<p class="card-text">Uma série de meditações pra você relaxar</p>
					<a class="btn btn-outline-info btn-centralizar" href="">Começar</a>
				</div>
			</div>
			<!-- fim do cartão meditação -->

			<!-- início do cartão corrida -->
			<div class="card card-atv">
				<div class="card-body">
					<figure>
						<img src="img/corrida.jpg" alt="corrida">
					</figure>
					<h4 class="card-title">Corrida</h4>
					<h6 class="card-subtitle">Informe sobre suas corridas e
						descubra como está sua evolução</h6>
					<p class="card-text">Controles personalizados para você
						registrar sua corrida e saber informações do seu desempenho nas
						pistas</p>
					<a class="btn btn-outline-info btn-centralizar" href="">Começar</a>
				</div>
			</div>
			<!-- fechamento do cartão corrida -->

			<div class="card card-atv">
				<!-- início do cartão atividade -->
				<div class="card-body">
					<figure>
						<img src="img/exercicios.jpg" alt="atividade">
					</figure>
					<h4 class="card-title">Atividade física</h4>
					<h6 class="card-subtitle">Conheça nossos treinos montados por
						especialistas</h6>
					<p class="card-text">Uma gama de treinos para você manter a
						forma física em qualquer lugar</p>
					<a class="btn btn-outline-info btn-centralizar" href="">Começar</a>
				</div>
			</div>
			<!-- fechamento do cartão atividade -->
		</div>
		<!-- Fechamento do card-collums-->
	</main>
<jsp:include page="resources/asset-jquerry.jsp" />
</body>
</html>