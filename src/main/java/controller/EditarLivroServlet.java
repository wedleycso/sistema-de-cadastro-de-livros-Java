package controller;

import model.Livro;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/livro/editar")
public class EditarLivroServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String idParam = request.getParameter("id");
        
       
        if (idParam == null || idParam.isEmpty()) {
            
            response.sendRedirect(request.getContextPath() + "/livro");
            return;
        }

        try {
            int id = Integer.parseInt(idParam);
            Livro livro = LivroServlet.buscarLivro(id);
            request.setAttribute("livro", livro);
            request.getRequestDispatcher("/livro/editar/editarLivro.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            
            response.sendRedirect(request.getContextPath() + "/livro");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String idParam = request.getParameter("id");
        
       
        if (idParam == null || idParam.isEmpty()) {
           
            response.sendRedirect(request.getContextPath() + "/livro");
            return;
        }

        try {
            int id = Integer.parseInt(idParam);
            String titulo = request.getParameter("titulo");
            String autor = request.getParameter("autor");
            String editora = request.getParameter("editora");
            String genero = request.getParameter("genero");
            Integer anoPublicacao = Integer.parseInt(request.getParameter("anoPublicacao"));
            String isbn = request.getParameter("isbn");
            String descricao = request.getParameter("descricao");

            Livro livro = new Livro(id, titulo, autor, editora, genero, anoPublicacao, isbn, descricao); 
            LivroServlet.atualizarLivro(livro);
            
            request.getSession().setAttribute("mensagemSucesso", "Informações atualizadas com sucesso!");  
            
            response.sendRedirect(request.getContextPath() + "/livro");
        } catch (NumberFormatException e) {
            
            response.sendRedirect(request.getContextPath() + "/livro");
        }
    }
}
