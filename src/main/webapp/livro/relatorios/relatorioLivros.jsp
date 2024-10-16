<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relatório de Livros</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Raleway:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles.css">

</head>
<body>
    <jsp:include page="/resources/menu.jsp" />
	
	<header>
    	<h1>Relatório de Livros</h1>
	</header>
	
    <form action="${pageContext.request.contextPath}/livro/relatorio" method="get">
        <label for="autor">Autor:</label>
        <input type="text" id="autor" name="autor">

        <label for="editora">Editora:</label>
        <input type="text" id="editora" name="editora">

        <label for="anoPublicacao">Ano de Publicação:</label>
        <input type="number" id="anoPublicacao" name="anoPublicacao">

        <input type="submit" value="Gerar Relatório">
    </form>

    <c:if test="${not empty livros}">
        <h2>Resultados:</h2>
        <table border="1">
            <tr>
                <th>Título</th>
                <th>Autor</th>
                <th>Editora</th>
                <th>Ano de Publicação</th>
                <th>ISBN</th>
                <th>Descrição</th>
            </tr>
            <c:forEach var="livro" items="${livros}">
                <tr>
                    <td>${livro.titulo}</td>
                    <td>${livro.autor}</td>
                    <td>${livro.editora}</td>
                    <td>${livro.anoPublicacao}</td>
                    <td>${livro.isbn}</td>
                    <td>${livro.descricao}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <jsp:include page="/resources/footer.jsp" />
</body>
</html>
