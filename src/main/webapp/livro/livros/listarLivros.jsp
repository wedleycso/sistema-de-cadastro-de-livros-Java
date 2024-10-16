<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% 
    String mensagemSucesso = (String) session.getAttribute("mensagemSucesso");
    if (mensagemSucesso != null) { 
%>
    <div id="mensagem-sucesso" class="alert alert-success">
        <%= mensagemSucesso %>
    </div>
<%
    session.removeAttribute("mensagemSucesso");
    }
%>

<% 
    String mensagemDeletar = (String) session.getAttribute("mensagemDeletar");
    if (mensagemDeletar != null) { 
%>
    <div id="mensagem-deletar" class="alert alert-success">
        <%= mensagemDeletar %>
    </div>
<%
    session.removeAttribute("mensagemDeletar");
    }
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Livros Cadastrados</title>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Raleway:wght@400;700&display=swap" rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/styles.css">

</head>
<body>
	<jsp:include page="/resources/menu.jsp" />
	
	<header>
		<h1>Lista de Livros</h1>
	</header>
	
	<table border="1">
	
		<tr>
			<th>Título</th>
			<th>Autor</th>
			<th>Editora</th>
			<th>Genero</th>
			<th>Ano de Publicação</th>
			<th>ISBN</th>
			<th>Descrição</th>
			<th>Ações</th>
		</tr>
		<c:forEach var="livro" items="${livros}">
			<tr>
				<td>${livro.titulo}</td>
				<td>${livro.autor}</td>
				<td>${livro.editora}</td>
				<td>${livro.genero}</td>
				<td>${livro.anoPublicacao}</td>
				<td>${livro.isbn}</td>
				<td>${livro.descricao}</td>
					<td>
					<a href="livro/editar?id=${livro.id}"><button type="button">Editar</button></a>
					<a href="${pageContext.request.contextPath}/livro/excluir?id=${livro.id}" onclick="return confirm('Tem certeza que deseja excluir este livro?')"><button type="button">Excluir</button></a>
			</tr>
		</c:forEach>
	</table>

	<jsp:include page="/resources/footer.jsp" />
</body>
<script>
    // Oculta a notificação após 5 segundos (5000 milissegundos)
    setTimeout(function() {
        var mensagemSucesso = document.getElementById("mensagem-sucesso");
        var mensagemDeletar = document.getElememtById("mensagem-deletar");
        if (mensagemSucesso) {
            mensagemSucesso.style.display = "none";
        }
        if (mensagemDeletar){
        	mensagemDeletar.style.display = "none";
        }
    }, 5000);
</script>
</html>
