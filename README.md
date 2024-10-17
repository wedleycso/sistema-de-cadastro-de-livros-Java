# 📚 Sistema de Cadastro de Livros
Bem-vindo ao Sistema de Cadastro de Livros, uma aplicação robusta desenvolvida em Java utilizando Servlets e JSP. O sistema permite que os usuários gerenciem eficientemente coleções de livros, realizando operações essenciais como cadastro, edição, exclusão e geração de relatórios.

## 🌟 _Funcionalidades_
- **Cadastrar livros:** Cadastre novos livros com detalhes completos.
- **Listar livros:** Exibe uma lista organizada de todos os livros cadastrados.
- **Editar livros:** Atualize informações de qualquer livro no sistema.
- **Excluir livros:** Remova livros do sistema facilmente.
- **Gerar relatórios:** Crie relatórios dinâmicos baseados em filtros como autor, editora ou ano de publicação.

## 🗂️ _Arquivos JSP e Suas Funções_
Aqui estão os principais arquivos JSP do sistema e suas respectivas funções:

### index.jsp

* Descrição: Página inicial que oferece uma interface de boas-vindas e links para as principais funcionalidades.
* Função: Ponto de entrada e navegação.
* URL: /index.jsp

### cadastrar-livro.jsp

* Descrição: Formulário para inserir detalhes como título, autor, editora, ano e ISBN.
* Função: Adicionar novos livros ao sistema, com validação de campos.
* URL: /livro/cadastrar

### listar-livros.jsp

* Descrição: Exibe uma tabela completa com todos os livros cadastrados, com opções para editar e excluir.
* Função: Gestão centralizada de livros cadastrados.
* URL: /livro/livros

### editar-livro.jsp

* Descrição: Formulário pré-preenchido para editar as informações de um livro existente.
* Função: Facilitar a edição de livros já cadastrados.
* URL: /livro/editar

### relatorioLivros.jsp

* Descrição: Permite que o usuário filtre os livros com base em critérios como autor, editora ou ano de publicação.
* Função: Gerar relatórios personalizados com base nos filtros definidos pelo usuário.
* URL: /livro/relatorios

### 🛠️ _Estrutura de Páginas e Navegação_
Cada página JSP é gerenciada por um Servlet correspondente, que processa as requisições do usuário e retorna as respostas adequadas. A seguir, estão os principais Servlets e suas responsabilidades:

* LivroServlet: Gerencia a lógica central de cadastro, edição, exclusão e listagem de livros.
* CadastrarLivroServlet: Responsável pelo processo de cadastro de novos livros.
* EditarLivroServlet: Atualiza os dados de um livro existente.
* ExcluirLivroServlet: Remove livros do sistema.
* RelatorioLivrosServlet: Processa as requisições para geração de relatórios filtrados.

### 🚀 Como Executar o Projeto
Para configurar e rodar o projeto localmente, siga os passos abaixo:

***Clone o repositório:***

´´´bash
Copiar código
git clone https://github.com/wedleycso/sistema-de-cadastro-de-livros.git
Importe o projeto em sua IDE (recomendado: IntelliJ IDEA ou Eclipse).´´´

_Configure o Apache Tomcat como servidor na sua IDE._

_Execute o servidor Tomcat e acesse o sistema via navegador em:_

´´´bash
Copiar código
http://localhost:8080/sistema-de-cadastro-de-livros´´´

## 💻 Tecnologias Utilizadas
* Java: Linguagem principal para desenvolvimento.
* Servlets: Controlam a lógica de negócio.
* JSP (JavaServer Pages): Geram o conteúdo dinâmico exibido no frontend.
* Apache Tomcat: Servidor de aplicação utilizado.
* CSS: Design moderno e responsivo para a interface.
* 
## 🎨 Estilo e Design
O sistema adota um design minimalista e moderno, oferecendo uma interface limpa e responsiva. As páginas são estilizadas com CSS, utilizando fontes elegantes para melhorar a experiência visual.

### Localização do CSS: /resources/styles.css

### ⚙️ Requisitos do Sistema
- Java 21+
- Apache Tomcat 9+
- Maven para gerenciamento de dependências

## 🧩 Instalação e Configuração
- Certifique-se de que todas as dependências necessárias estejam instaladas.
- Configure o arquivo persistence.xml com as credenciais do banco de dados.
- Compile o projeto com Maven:
´´´bash
Copiar código
mvn clean install´´´

- Implemente o arquivo .war no Tomcat ou execute diretamente pela IDE.

## 🧩 Dependências
Servlet API: Gerenciamento de requisições e respostas.
JSTL: Manipulação de dados nas páginas JSP.

## 🛠️ Contribuição
***Contribuições são bem-vindas! Para colaborar, abra um pull request ou relate qualquer issue.***

## 📄 Licença
* Este projeto está licenciado sob a MIT License.

## 👥 Autores
*Desenvolvido por:*

_Wédley C. Oliveira_
_Nicolas Pires_
