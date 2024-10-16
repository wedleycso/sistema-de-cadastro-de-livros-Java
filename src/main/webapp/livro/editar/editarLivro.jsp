<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Livro</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Raleway:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles.css">

</head>
<body>
	<jsp:include page="/resources/menu.jsp" />
	
	<header>
    	<h1>Editar Livro</h1>
    </header>
    
    <form action="${pageContext.request.contextPath}/livro/editar" method="post">
    <input type="hidden" name="id" value="${livro.id}">
    Título: <input type="text" name="titulo" value="${livro.titulo}" required><br>
    Autor: <input type="text" name="autor" value="${livro.autor}" required><br>
    Editora: <input type="text" name="editora" value="${livro.editora}" required><br>
    Genero: <input type="text" name="genero" value="${livro.genero}" required><br>
    Ano de Publicação: <input type="number" name="anoPublicacao" value="${livro.anoPublicacao}" required><br>
    ISBN: <input type="text" name="isbn" value="${livro.isbn}"><br>
    Descrição: <textarea name="descricao">${livro.descricao}</textarea><br>
    <input type="submit" value="Salvar">
	</form>
	
	<script>
    // Oculta a notificação após 5 segundos (5000 milissegundos)
    setTimeout(function() {
        var mensagemSucesso = document.getElementById("mensagem-sucesso");
        if (mensagemSucesso) {
            mensagemSucesso.style.display = "none";
        }
    }, 5000);
</script>

    <jsp:include page="/resources/footer.jsp" />
</body>
</html>
