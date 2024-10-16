package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/livro/excluir")
public class ExcluirLivroServlet extends HttpServlet {
    private LivroServlet livroServlet = new LivroServlet();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html; charset=UTF-8");
    	request.setCharacterEncoding("UTF-8");

    	int id = Integer.parseInt(request.getParameter("id"));
        livroServlet.excluirLivro(id);

        request.getSession().setAttribute("mensagemDeletar", "O livro foi excluido!");  
        
        response.sendRedirect(request.getContextPath() + "/livro");
    }
}
