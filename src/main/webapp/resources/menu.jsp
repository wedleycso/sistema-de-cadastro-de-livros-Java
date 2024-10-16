<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav>
    <h1>Sistema de Cadastro de Livros</h1>
    <ul>
    	<li><a href="${pageContext.request.contextPath}/index.jsp">Início</a></li>
        <li><a href="${pageContext.request.contextPath}/livro/cadastrar">Cadastrar Livro</a></li>
        <li><a href="${pageContext.request.contextPath}/livro">Listar Todos os Livros</a></li>
        <li><a href="${pageContext.request.contextPath}/livro/relatorios">Relatórios</a></li>
    </ul>
</nav> 
