<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<nav class="navbar navbar-expand-sm navbar-light bg-light">

	<!-- Logo -->
	<!-- Logo -->
	<a href="dashboard.jsp" class="navbar-brand"><img
		src="img/logo-abreviada.png" alt="Health Track"
		class="logo-pequena"></a>

	<!-- Menu Hamburguer para reduzir menu em telas pequenas  -->
	<button class="navbar-toggler" data-toggle="collapse"
		data-target="#navegacao">
		<span class="navbar-toggler-icon"></span>
	</button>

	<!-- in�cio da div navegacao da navbar -->
	<div class="collapse navbar-collapse" id="navegacao">
		<!-- In�cio da lista da nav bar -->
		<ul class="navbar-nav ml-auto">
			<li class="nav-item">
				<!-- In�cio da item (nav-item) da navbar --> <a
				href="dashboard.jsp" class="nav-link"> <svg width="1em"
						height="1em" viewBox="0 0 16 16" class="bi bi-card-checklist"
						fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                          <path fill-rule="evenodd"
							d="M14.5 3h-13a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z" />
                          <path fill-rule="evenodd"
							d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0zM7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0z" />
                        </svg> Dashboard
			</a>
			</li>
			<!-- final da item (nav-item) da navbar -->

			<li class="nav-item">
				<!-- In�cio da item (nav-item) da navbar --> <a href="usuario.jsp"
				class="nav-link"> <!-- In�cio do icone utilizado para usu�rio -->
					<svg class="bi bi-person-circle" width="1em" height="1em"
						viewBox="0 0 16 16" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
                                  <path
							d="M13.468 12.37C12.758 11.226 11.195 10 8 10s-4.757 1.225-5.468 2.37A6.987 6.987 0 0 0 8 15a6.987 6.987 0 0 0 5.468-2.63z" />
                                  <path fill-rule="evenodd"
							d="M8 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                                  <path fill-rule="evenodd"
							d="M8 1a7 7 0 1 0 0 14A7 7 0 0 0 8 1zM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8z" />
                                </svg> <!-- Fechamento do icone utilizado para usu�rio -->
					Usu�rio
			</a>
			</li>
			<!-- final da item (nav-item) da navbar -->

			<li class="nav-item">
				<!-- In�cio do item (nav-item) da navbar --> <a
				href="atividades.jsp" class="nav-link"> <!-- In�cio do icone utilizado para atividades -->
					<svg class="bi bi-clipboard-data" width="1em" height="1em"
						viewBox="0 0 16 16" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
                                  <path fill-rule="evenodd"
							d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z" />
                                  <path fill-rule="evenodd"
							d="M9.5 1h-3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3z" />
                                  <path
							d="M4 11a1 1 0 1 1 2 0v1a1 1 0 1 1-2 0v-1zm6-4a1 1 0 1 1 2 0v5a1 1 0 1 1-2 0V7zM7 9a1 1 0 0 1 2 0v3a1 1 0 1 1-2 0V9z" />
                                </svg> <!-- Final do icone utilizado para atividades -->
					Atividades
			</a>
			</li>
			<!-- final da item (nav-item) da navbar -->
			<li class="nav-item">
				<!-- In�cio da item (nav-item) da navbar --> <a href="refeicao.jsp"
				class="nav-link"> <!-- In�cio do icone utilizado para dieta -->
					<svg class="bi bi-list-ul" width="1em" height="1em"
						viewBox="0 0 16 16" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
                                  <path fill-rule="evenodd"
							d="M5 11.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm-3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm0 4a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm0 4a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
                                </svg> <!-- Final do icone utilizado para dieta -->
					Dieta
			</a>
			</li>
			<!-- Final da item (nav-item) da navbar -->
			<li class="nav-item">
				<!-- In�cio da item (nav-item) da navbar --> <a href="imc.jsp"
				class="nav-link "> <!-- In�cio do icone utilizado para Sa�de -->
					<svg class="bi bi-heart-half" width="1em" height="1em"
						viewBox="0 0 16 16" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
                              <path fill-rule="evenodd"
							d="M8 1.314C3.562-3.248-7.534 4.735 8 15V1.314z" />
                              <path fill-rule="evenodd"
							d="M8 2.748l-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
								<!-- Final do icone utilizado para sa�de -->
                            </svg> Sa�de
			</a>
			</li>
			<!-- Final da item (nav-item) da navbar -->
			<li class="nav-item">
				<!-- In�cio da item (nav-item) da navbar --> <a href="login.jsp"
				class="nav-link"> <!-- In�co do icone utilizado para Sa�r --> <svg
						class="bi bi-box-arrow-in-right" width="1em" height="1em"
						viewBox="0 0 16 16" fill="currentColor"
						xmlns="http://www.w3.org/2000/svg">
                              <path fill-rule="evenodd"
							d="M8.146 11.354a.5.5 0 0 1 0-.708L10.793 8 8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0z" />
                              <path fill-rule="evenodd"
							d="M1 8a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 1 8z" />
                              <path fill-rule="evenodd"
							d="M13.5 14.5A1.5 1.5 0 0 0 15 13V3a1.5 1.5 0 0 0-1.5-1.5h-8A1.5 1.5 0 0 0 4 3v1.5a.5.5 0 0 0 1 0V3a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v10a.5.5 0 0 1-.5.5h-8A.5.5 0 0 1 5 13v-1.5a.5.5 0 0 0-1 0V13a1.5 1.5 0 0 0 1.5 1.5h8z" />
                            </svg> <!-- Final do icone utilizado para Sa�r -->
					Sair
			</a>
			</li>
			<!-- Final da item (nav-item) da navbar -->
		</ul>
		<!-- final da lista da navbar -->
	</div>
	<!-- final da div do navbar -->
</nav>