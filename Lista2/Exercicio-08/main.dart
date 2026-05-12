class Livro {
  String titulo;
  String autor;

  Livro(this.titulo, this.autor);
}

abstract class Informativo {
  void exibirInformacoes();
}

class LivroDigital extends Livro implements Informativo {
  double tamanhoArquivo;

  LivroDigital(String titulo, String autor, this.tamanhoArquivo)
      : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print('Livro Digital');
    print('Título: $titulo');
    print('Autor: $autor');
    print('Tamanho do arquivo: ${tamanhoArquivo}MB');
    print('');
  }
}

class LivroFisico extends Livro implements Informativo {
  int quantidadePaginas;

  LivroFisico(String titulo, String autor, this.quantidadePaginas)
      : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print('Livro Físico');
    print('Título: $titulo');
    print('Autor: $autor');
    print('Quantidade de páginas: $quantidadePaginas');
    print('');
  }
}

void main() {
  LivroDigital digital = LivroDigital('Harry Potter', 'J.K. Rowling', 2.5);
  LivroFisico fisico = LivroFisico('O Alquimista', 'Paulo Coelho', 208);

  digital.exibirInformacoes();
  fisico.exibirInformacoes();
}