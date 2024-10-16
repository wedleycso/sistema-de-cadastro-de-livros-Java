package controller;

import model.Livro;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet("/livro/relatorios")
public class RelatorioLivrosServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        // Captura os parâmetros do formulário
        String autor = request.getParameter("autor");
        String editora = request.getParameter("editora");
        String anoPublicacaoStr = request.getParameter("anoPublicacao");

        // Obtém a lista de livros
        List<Livro> livros = LivroServlet.getLivros(); // Método para obter a lista de livros

        // Filtra a lista de livros de acordo com os critérios informados
        if (autor != null && !autor.trim().isEmpty()) {
            livros = livros.stream()
                    .filter(livro -> livro.getAutor().toLowerCase().contains(autor.toLowerCase()))
                    .collect(Collectors.toList());
        }
        if (editora != null && !editora.trim().isEmpty()) {
            livros = livros.stream()
                    .filter(livro -> livro.getEditora().toLowerCase().contains(editora.toLowerCase()))
                    .collect(Collectors.toList());
        }
        if (anoPublicacaoStr != null && !anoPublicacaoStr.trim().isEmpty()) {
            int anoPublicacao = Integer.parseInt(anoPublicacaoStr);
            livros = livros.stream()
                    .filter(livro -> livro.getAnoPublicacao() == anoPublicacao)
                    .collect(Collectors.toList());
        }

        // Adiciona a lista filtrada ao request
        request.setAttribute("livros", livros);
        // Redireciona para a página de relatório
        request.getRequestDispatcher("/livro/relatorios/relatorioLivros.jsp").forward(request, response);
    }
}
