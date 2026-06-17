abstract class Informativo {
  void exibirInformacoes();
}

class Livro {
  String titulo;
  String autor;

  Livro(this.titulo, this.autor);

  @override
  String toString();
}

class LivroDigital extends Livro implements Informativo {
  double tamanhoArquivo;

  LivroDigital(String t, String a, this.tamanhoArquivo)
      : super(t, a);

  @override
  void exibirInformacoes() {
    print(toString());
  }

  @override
  String toString() =>
      'Digital | $titulo | $autor | ${tamanhoArquivo}MB';
}

class LivroFisico extends Livro implements Informativo {
  int quantidadePaginas;

  LivroFisico(String t, String a, this.quantidadePaginas)
      : super(t, a);

  @override
  void exibirInformacoes() {
    print(toString());
  }

  @override
  String toString() =>
      'Físico | $titulo | $autor | $quantidadePaginas páginas';
}

class Audiobook extends Livro implements Informativo {
  int duracaoMinutos;

  Audiobook(String t, String a, this.duracaoMinutos)
      : super(t, a);

  @override
  void exibirInformacoes() {
    print(toString());
  }

  @override
  String toString() =>
      'Audiobook | $titulo | $autor | ${duracaoMinutos} min';
}