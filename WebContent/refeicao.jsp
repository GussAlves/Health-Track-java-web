<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
<jsp:include page="resources/asset-bootstrap.jsp" />
<title>Refei��o</title>
</head>
<!-- Final da head-->

<!-- In�cio do body-->
<body>
	<header>
		<jsp:include page="resources/asset-navbar.jsp" />
		<!-- Breadcrumb -->
		<ol class="breadcrumb">
		</ol>

	</header>
	<!-- Encerramento da header-->

	<main>
		<!-- Div de formul�rio padr�o tipo  ou vertical -->
		<!-- formul�rios  classe: form-control-<opcoes> op��es: sm, lg  -->
		<br>
		<!-- Div que inic�a o card maior da tela-->
		<div class="card bg-ligth">
			<!-- Div que inic�a o cardheader onde est�o os links para acesso as demais op��es-->
			<div class="card-header">
				<ul class="nav nav-tabs">
					<!-- "ul" que inic�a card-header-->
					<li class="nav-item"><a class="nav-link nav-card active "
						href=""> Cadastrar Refei��o</a></li>
					<li class="nav-item"><a class="nav-link nav-card  " href="">Acompanhe
							a Dieta</a></li>
					<li class="nav-item"><a class="nav-link nav-card " href="">Dicas</a>
					</li>
				</ul>
				<!--  Fechamento da "ul"(lista) da linha "row" do card-header-->
			</div>
			<!-- Fechamento do card-header -->
			<!-- Div "figure" onde est� inserida a imagem do card -->
			<!-- Inicio do card body-->
			<div class='card-body card-refeicao'>

				<div id="carouselExampleControls" class="carousel slide"
					data-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<figure>
								<img src="img/dieta1.jpg" alt="refei��o">
							</figure>
						</div>
						<div class="carousel-item">
							<figure>
								<img src="img/dieta2.jpg" alt="refei��o">
							</figure>
						</div>
						<div class="carousel-item">
							<figure>
								<img src="img/dieta3.jpg" alt="refei��o">
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
				<h4>Porque ter uma alimenta��o saud�vel?</h4>
				<h5>Conhe�a nossas dicas e op��es de alongamentos</h5>
				<p>A alimenta��o saud�vel � o principal respons�vel para o
					organismo ter um bom desempenho. O nosso corpo precisa diariamente
					de vitaminas e minerais para funcionar perfeitamente. Um card�pio
					equilibrado traz diversos benef�cios, tanto para o aspecto f�sico,
					quanto para o mental.</p>

				<p>Al�m de ter mais disposi��o e energia, uma pessoa com a
					alimenta��o saud�vel � menos suscet�vel a ter algumas doen�as,
					como: obesidade, c�ncer, artrite, anemia, diabetes e hipertens�o.</p>

				<br>
			</div>
			<!-- Fechamento do card body-->
			<div class='card-footer card-refeicao '>
				<!-- In�cip do card-footer-->
				<!-- In�cio do formul�rio de inclus�o de nova "refei��o"-->
				<c:if test="${not empty msg }">
					<div class="alert alert-success">${msg }</div>
				</c:if>
				<c:if test="${not empty erro }">
					<div class="alert alert-danger">${erro }</div>
				</c:if>
				<form action="refeicao" method="post" class="ml-3 mr-3 mb-3">
					<label for="id-refeicao">Refei��o</label> 
					<select id="id-refeicao" name="tipoRef" class='form-control form-control-sm'>
						<option>Caf� da manh�</option>
						<option>Almo�o</option>
						<option>Lanche</option>
						<option>Jantar</option>
					</select>

					<div class='form-inline'>
						<!-- Div do in�cio do formul�rio que vai adicionar novo "alimento"-->
						<input class='form-control alimento col-6' type="text"
							placeholder="Alimento" name="alimento">
						<div class='form-group form-select'>
							<!-- In�cio da div do selec de novo "alimento"-->
							<input type="text" class='form-control' id="quantidade" 
								name="quantidade" placeholder="Quantidade">
								
							<!-- Final do select de novo "alimento"-->
						</div>

						<div class='form-group'>
							<!-- In�cio do select de quantidade de calorias do "alimento"-->
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
				<!-- Fechamento do formul�rio de novo "alimento"-->

			</div>
			<!-- Fechamento da Div do formul�rio que vai adicionar novo "alimento"-->
		</div>
		</form>
		<!-- Fechamento do formul�rio de inclus�o de nova "refei��o"-->

		<div class="tabela-box-refeicao ">
			<table class="table styled-table ">
				<thead>
					<tr>
						<th scope="col">Item da Refei��o</th>
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