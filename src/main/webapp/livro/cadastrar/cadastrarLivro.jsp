<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar Livro</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Raleway:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles.css">

    <script>
        function validarFormulario() {
            const anoPublicacao = document.getElementById("anoPublicacao").value;
            const anoAtual = new Date().getFullYear();

            if (anoPublicacao > anoAtual || anoPublicacao < 1000) {
                alert("Por favor, insira um ano de publicação válido.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
	<jsp:include page="/resources/menu.jsp" />
	
    <header>
        <h1>Cadastrar Livro</h1>
    </header>

    <form action="/sistema-de-cadastro-de-livros-Java/livro/cadastrar" method="post">
    <input type="hidden" name="acao" value="cadastrar">
    Título: <input type="text" name="titulo" required><br>
    Autor: <input type="text" name="autor" required><br>
    Editora: <input type="text" name="editora" required><br>
    Ano de Publicação: <input type="number" name="anoPublicacao" required><br>
    ISBN: <input type="text" name="isbn"><br>
    Descrição: <textarea name="descricao"></textarea><br>
    <input type="submit" value="Cadastrar">
	</form>
	
	<jsp:include page="/resources/footer.jsp" />
</body>
</html>