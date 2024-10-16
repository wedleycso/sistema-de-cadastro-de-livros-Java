package controller;

import model.Livro;

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
        Integer anoPublicacao = Integer.parseInt(request.getParameter("anoPublicacao"));
        String isbn = request.getParameter("isbn");
        String descricao = request.getParameter("descricao");

        
        Livro livro = new Livro(null, titulo, autor, editora, anoPublicacao, isbn, descricao);
        
        
        LivroServlet.adicionarLivro(livro);
        
        
        response.sendRedirect(request.getContextPath() + "/livro");
    }
}
