<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <nav>
    <h1>Sistema de Cadastro de Livros</h1>
    <ul>
    	<li><a href="${pageContext.request.contextPath}/index.jsp">Início</a></li>
        <li><a href="${pageContext.request.contextPath}/livro/cadastrar">Cadastrar Livro</a></li>
        <li><a href="${pageContext.request.contextPath}/livro">Listar Todos os Livros</a></li>
        <li><a href="${pageContext.request.contextPath}/livro/relatorios">Relatórios</a></li>
    </ul>
</nav> 
	
	<header>
    	<h1>Relatório de Livros</h1>
	</header>
	
    <form action="${pageContext.request.contextPath}/livro/relatorios" method="get">
        <label for="name">Título:</label>
        <input type="text" id="name" name="name">
        
        <label for="autor">Autor:</label>
        <input type="text" id="autor" name="autor">

        <label for="editora">Editora:</label>
        <input type="text" id="editora" name="editora">

        <label for="genero">Genero:</label>
        <input type="text" id="genero" name="genero">

		<label for="anoPublicacao">Ano de Publicação:</label>
        <input type="number" id="anoPublicacao" name="anoPublicacao">

        <input type="submit" value="Gerar Relatório">
    </form>
        <table border="1">
            <tr>
                <th>Título</th>
                <th>Autor</th>
                <th>Editora</th>
                <th>Genero</th>
                <th>Ano de Publicação</th>
                <th>ISBN</th>
                <th>Descrição</th>
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
			</tr>
		</c:forEach>
        </table>

    <footer>
	<p>&copy; 2024 Sistema de Cadastro de Livros. Todos os direitos
		reservados.</p>  
</footer>
</body>
</html>
