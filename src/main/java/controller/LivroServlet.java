package controller;

import model.Livro;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/livro")
public class LivroServlet extends HttpServlet {
    private static List<Livro> livros = new ArrayList<>();
    private static int nextLivroId = 1;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("livros", livros);
        req.getRequestDispatcher("/livro/livros/listarLivros.jsp").forward(req, resp);
    }

    public static void adicionarLivro(Livro livro) {
        livro.setId(nextLivroId++);
        livros.add(livro);
    }

    public static Livro buscarLivro(int id) {
        return livros.stream().filter(livro -> livro.getId() == id).findFirst().orElse(null);
    }

    public static void atualizarLivro(Livro livro) {
        for (int i = 0; i < livros.size(); i++) {
            if (livros.get(i).getId().equals(livro.getId())) {
                livros.set(i, livro);
                break;
            }
        }
    }

    public static void excluirLivro(int id) {
        livros.removeIf(livro -> livro.getId() == id);
    }

    // Adicione o método getLivros() aqui
    public static List<Livro> getLivros() {
        return livros;
    }
}
