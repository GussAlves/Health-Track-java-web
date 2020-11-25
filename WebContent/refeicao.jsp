<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
<jsp:include page="resources/asset-bootstrap.jsp" />
<title>Refeição</title>
</head>
<!-- Final da head-->

<!-- Início do body-->
<body>
	<header>
		<jsp:include page="resources/asset-navbar.jsp" />
		<!-- Breadcrumb -->
		<ol class="breadcrumb">
		</ol>

	</header>
	<!-- Encerramento da header-->

	<main>
		<!-- Div de formulário padrão tipo  ou vertical -->
		<!-- formulários  classe: form-control-<opcoes> opções: sm, lg  -->
		<br>
		<!-- Div que inicía o card maior da tela-->
		<div class="card bg-ligth">
			<!-- Div que inicía o cardheader onde estão os links para acesso as demais opções-->
			<div class="card-header">
				<ul class="nav nav-tabs">
					<!-- "ul" que inicía card-header-->
					<li class="nav-item"><a class="nav-link nav-card active "
						href=""> Cadastrar Refeição</a></li>
					<li class="nav-item"><a class="nav-link nav-card  " href="">Acompanhe
							a Dieta</a></li>
					<li class="nav-item"><a class="nav-link nav-card " href="">Dicas</a>
					</li>
				</ul>
				<!--  Fechamento da "ul"(lista) da linha "row" do card-header-->
			</div>
			<!-- Fechamento do card-header -->
			<!-- Div "figure" onde está inserida a imagem do card -->
			<!-- Inicio do card body-->
			<div class='card-body card-refeicao'>

				<div id="carouselExampleControls" class="carousel slide"
					data-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<figure>
								<img src="img/dieta1.jpg" alt="refeição">
							</figure>
						</div>
						<div class="carousel-item">
							<figure>
								<img src="img/dieta2.jpg" alt="refeição">
							</figure>
						</div>
						<div class="carousel-item">
							<figure>
								<img src="img/dieta3.jpg" alt="refeição">
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
				<h4>Porque ter uma alimentação saudével?</h4>
				<h5>Conheça nossas dicas e opções de alongamentos</h5>
				<p>A alimentação saudável é o principal responsável para o
					organismo ter um bom desempenho. O nosso corpo precisa diariamente
					de vitaminas e minerais para funcionar perfeitamente. Um cardápio
					equilibrado traz diversos benefícios, tanto para o aspecto físico,
					quanto para o mental.</p>

				<p>Além de ter mais disposição e energia, uma pessoa com a
					alimentação saudável é menos suscetível a ter algumas doenças,
					como: obesidade, câncer, artrite, anemia, diabetes e hipertensão.</p>

				<br>
			</div>
			<!-- Fechamento do card body-->
			<div class='card-footer card-refeicao '>
				<!-- Inícip do card-footer-->
				<!-- Início do formulário de inclusão de nova "refeição"-->
				<c:if test="${not empty msg }">
					<div class="alert alert-success">${msg }</div>
				</c:if>
				<c:if test="${not empty erro }">
					<div class="alert alert-danger">${erro }</div>
				</c:if>
				<form action="refeicao" method="post" class="ml-3 mr-3 mb-3">
					<label for="id-refeicao">Refeição</label> 
					<select id="id-refeicao" name="tipoRef" class='form-control form-control-sm'>
						<option>Café da manhã</option>
						<option>Almoço</option>
						<option>Lanche</option>
						<option>Jantar</option>
					</select>

					<div class='form-inline'>
						<!-- Div do início do formulário que vai adicionar novo "alimento"-->
						<input class='form-control alimento col-6' type="text"
							placeholder="Alimento" name="alimento">
						<div class='form-group form-select'>
							<!-- Início da div do selec de novo "alimento"-->
							<input type="text" class='form-control' id="quantidade" 
								name="quantidade" placeholder="Quantidade">
								
							<!-- Final do select de novo "alimento"-->
						</div>

						<div class='form-group'>
							<!-- Início do select de quantidade de calorias do "alimento"-->
							<input type="text" class='form-control' id="calorias" 
								name="calorias" placeholder="calorias">
						</div>

						<div class="box-btn-alimento">
							<span> 
								<input type="submit" value="Adicionar Registro" class="btn btn-outline-info btn-alimento add-row">
							</span>
						</div>
					</div>
					<!-- Fechamento da div form-inline-->


				</form>
				<!-- Fechamento do formulário de novo "alimento"-->

			</div>
			<!-- Fechamento da Div do formulário que vai adicionar novo "alimento"-->
		</div>
		</form>
		<!-- Fechamento do formulário de inclusão de nova "refeição"-->

		<div class="tabela-box-refeicao ">
			<table class="table styled-table ">
				<thead>
					<tr>
						<th scope="col">Item da Refeição</th>
						<th scope="col">Peso</th>
						<th scope="col">Calorias</th>

					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="tabela">Batata doce</td>
						<td class="tabela">400g</td>
						<td class="tabela">250/cal</td>
					</tr>

					<tr>
						<td class="tabela">Frango</td>
						<td class="tabela">400g</td>
						<td class="tabela">250/cal</td>
					</tr>
				<tfoot>
					<tr>
						<td class="tfoot-tabela"></td>
						<td class="tfoot-tabela"></td>
						<td class="tfoot-tabela">500/cal</td>
					</tr>
				</tfoot>
				</tbody>


			</table>
		</div>
		<!-- Fechamento do card-footer-->
	</main>
<jsp:include page="resources/asset-jquerry.jsp" />
</body>
</html>