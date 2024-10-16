<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Raleway:wght@400;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles.css">
    <link href="${pageContext.request.contextPath}/resources" />
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
    <div class="content">
	    <section>
	        <h2>Bem-vindo ao Sistema de Cadastro de Livros!</h2>
	        <p>
	            Seja muito bem-vindo(a) ao <strong>Sistema de Cadastro de Livros</strong>, 
	            o lugar ideal para gerenciar sua coleção de livros com facilidade e eficiência. 
	            Aqui você pode cadastrar, editar, excluir e explorar os detalhes de todas as obras que fazem parte do seu acervo.
	        </p>
	        <p>
	            Nosso objetivo é garantir que você tenha uma experiência intuitiva e prática, com todas as ferramentas 
	            necessárias para manter suas informações sempre organizadas e ao seu alcance.
	        </p>
	        <p>
	            Comece agora mesmo! Navegue pelo menu acima e aproveite para <a href="${pageContext.request.contextPath}/livro/cadastrar">cadastrar seu primeiro livro</a> ou 
	            <a href="${pageContext.request.contextPath}/livro">explorar os títulos já cadastrados</a>.
	        </p>
	        <p>
	            Se precisar de ajuda, não hesite em entrar em contato com nosso suporte. Estamos prontos para ajudar você a aproveitar ao máximo o sistema!
	        </p>
	        <p><em>Boa leitura e boa organização!</em></p>
	    </section>
	</div>
    <footer>
	<p>&copy; 2024 Sistema de Cadastro de Livros. Todos os direitos
		reservados.</p>  
</footer>
</body>
</html>
