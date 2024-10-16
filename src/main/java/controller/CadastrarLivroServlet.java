package controller;

import model.Livro;
import java.util.Calendar; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/livro/cadastrar")
public class CadastrarLivroServlet extends HttpServlet {
	
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html; charset=UTF-8");
    	request.setCharacterEncoding("UTF-8");

    	request.getRequestDispatcher("/livro/cadastrar/cadastrarLivro.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html; charset=UTF-8");
    	request.setCharacterEncoding("UTF-8");

        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String editora = request.getParameter("editora");
        String genero = request.getParameter("genero");
        Integer anoPublicacao = Integer.parseInt(request.getParameter("anoPublicacao"));
        String isbn = request.getParameter("isbn");
        String descricao = request.getParameter("descricao");
        
        Calendar calendar = Calendar.getInstance();
        int anoAtual = calendar.get(Calendar.YEAR);
        
            if (anoPublicacao < 1900 || anoPublicacao > anoAtual) {
                request.getSession().setAttribute("mensagemErro", "Ano de publicação inválido! O ano deve estar entre 1900 e " + anoAtual + ".");
                response.sendRedirect(request.getContextPath() + "/livro/cadastrar");
                return; // Para o fluxo aqui caso o ano seja inválido
            }

        
        Livro livro = new Livro(null, titulo, autor, editora, genero, anoPublicacao, isbn, descricao);
        
        request.getSession().setAttribute("mensagemSucesso", "Livro cadastrado com sucesso!");        
        
        LivroServlet.adicionarLivro(livro);
        
        
        response.sendRedirect(request.getContextPath() + "/livro");
}
}
