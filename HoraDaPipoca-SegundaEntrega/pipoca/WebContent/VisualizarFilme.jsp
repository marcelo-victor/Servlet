<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:import url="header.jsp" />

<body>
	<!-- Modal -->
	<div class="modal fade" id="delete-modal" tabindex="-1" role="dialog"
		aria-labelledby="modalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Fechar">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="modalLabel">Excluir Filme</h4>
				</div>
				<div class="modal-body">Deseja realmente excluir este filme?</div>
				<div class="modal-footer">
					<form action="manterfilmes.do" method="post">
						<input type="hidden" name="id" value="${filme.id}" />
						<button type="submit" class="btn btn-primary" name="acao"
							value="excluir">Sim</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- /.modal -->
	<!-- Barra superior com os menus de navegação -->
	<c:import url="Menu.jsp" />
	<!-- Container Principal -->
	<div id="main" class="container mt-4">
		<h3 class="page-header">${filme.id}-${filme.titulo}</h3>
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-4 mt-4">
					<img alt="?" src="${filme.posterPath}" class="img-responsive">
				</div>

				<div class="col-md-8">
					<div class="row">
						<div class="col-md-12">
							<p>
								<strong>Gênero:&nbsp;</strong>${filme.genero.nome}</p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<p>
								<strong>Direção:&nbsp;</strong>${filme.diretor}</p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<p>${filme.descricao}</p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<p>
								<strong>Lançamento:&nbsp;</strong>
								<fmt:formatDate value="${filme.dataLancamento}"
									pattern="dd/MM/yyyy" />
							</p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<p>
								<strong>Popularidade:&nbsp;</strong>${filme.popularidade}</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr />
		<div id="actions" class="row">
			<div class="col-md-12">
				<a href="manterfilmes.do?acao=editar&id=${filme.id}"
					class="btn btn-primary">Editar</a> <a href="#"
					class="btn btn-danger" data-toggle="modal"
					data-target="#delete-modal">Excluir</a> <a href="ListarFilmes.jsp"
					class="btn btn-default">Voltar</a>
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>