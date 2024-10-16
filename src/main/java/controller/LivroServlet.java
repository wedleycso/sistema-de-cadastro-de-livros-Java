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
    public void init() throws ServletException {
        if (livros.isEmpty()) {
            Livro livro1 = new Livro(null, "1984", "George Orwell", "Companhia das Letras", "Distopia", 1949, "9788535914849", "Um clássico que explora uma sociedade controlada por um regime totalitário.");
            Livro livro2 = new Livro(null, "O Senhor dos Anéis", "J.R.R. Tolkien", "HarperCollins", "Fantasia", 1954, "9780544003415", "Uma jornada épica pela Terra-média para destruir o Um Anel.");
            Livro livro3 = new Livro(null, "Dom Quixote", "Miguel de Cervantes", "Penguin Classics", "Aventura", 1605, "9780142437230", "A história de um cavaleiro que luta contra moinhos de vento.");
            Livro livro4 = new Livro(null, "Cem Anos de Solidão", "Gabriel García Márquez", "Record", "Realismo Mágico", 1967, "9788532509802", "A saga da família Buendía em uma aldeia fictícia na Colômbia.");
            Livro livro5 = new Livro(null, "A Revolução dos Bichos", "George Orwell", "Companhia das Letras", "Fábula", 1945, "9788535916041", "Uma sátira sobre a revolução russa contada através de uma granja.");
            Livro livro6 = new Livro(null, "O Pequeno Príncipe", "Antoine de Saint-Exupéry", "Agir", "Fábula", 1943, "9788522005236", "Um jovem príncipe explora diferentes planetas aprendendo lições sobre a vida.");
            Livro livro7 = new Livro(null, "Orgulho e Preconceito", "Jane Austen", "Penguin Books", "Romance", 1813, "9780141439518", "Um clássico romance sobre amor, classe e as expectativas sociais da época.");
            
            adicionarLivro(livro1);
            adicionarLivro(livro2);
            adicionarLivro(livro3);
            adicionarLivro(livro4);
            adicionarLivro(livro5);
            adicionarLivro(livro6);
            adicionarLivro(livro7);
        }
    }
    
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
