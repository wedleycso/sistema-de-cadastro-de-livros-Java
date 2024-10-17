<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% 
    // Exibe a mensagem de sucesso, se existir
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
    // Exibe a mensagem de erro, se existir
    String mensagemErro = (String) session.getAttribute("mensagemErro");
    if (mensagemErro != null) { 
%>
    <div id="mensagem-erro" class="alert alert-danger">
        <%= mensagemErro %>
    </div>
<%
    session.removeAttribute("mensagemErro");
    }
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Livro</title>
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

    <!-- Conteúdo principal -->
    <header>
        <h1>Cadastrar Livro</h1>
    </header>

    <!-- Formulário de cadastro -->
    <form action="${pageContext.request.contextPath}/livro/cadastrar" method="post">
        <label for="titulo">Título:</label>
        <input type="text" id="titulo" name="titulo" required>
        
        <label for="autor">Autor:</label>
        <input type="text" id="autor" name="autor" required>

        <label for="editora">Editora:</label>
        <input type="text" id="editora" name="editora" required>

        <label for="genero">Gênero:</label>
        <input type="text" id="genero" name="genero" required>

        <label for="anoPublicacao">Ano de Publicação:</label>
        <input type="number" id="anoPublicacao" name="anoPublicacao" required>

        <label for="isbn">ISBN:</label>
        <input type="text" id="isbn" name="isbn" required>

        <label for="descricao">Descrição:</label>
        <textarea id="descricao" name="descricao" required></textarea>

        <input type="submit" value="Cadastrar">
    </form>

    <footer>
        <p>&copy; 2024 Sistema de Cadastro de Livros. Todos os direitos reservados.</p>  
    </footer>
</body>
<script>
    // Oculta as mensagens após 5 segundos
    setTimeout(function() {
        var mensagemSucesso = document.getElementById("mensagem-sucesso");
        var mensagemErro = document.getElementById("mensagem-erro");
        if (mensagemSucesso) {
            mensagemSucesso.style.display = "none";
        }
        if (mensagemErro) {
            mensagemErro.style.display = "none";
        }
    }, 5000);
</script>
</html>
