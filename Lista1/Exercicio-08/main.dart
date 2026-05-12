Código Dart
Saída
Diagrama
class Livro {
  String titulo;
  String autor;

  Livro(this.titulo, this.autor);

  void exibirInformacoes() {
    print('Título: $titulo');
    print('Autor: $autor');
  }
}

class LivroDigital extends Livro {
  double tamanhoArquivo;

  LivroDigital(String titulo, String autor, this.tamanhoArquivo)
      : super(titulo, autor);

  @override
  void exibirInformacoes() {
    super.exibirInformacoes();
    print('Tamanho do arquivo: ${tamanhoArquivo.toStringAsFixed(1)} MB');
  }
}

void main() {
  Livro livro = Livro('Dom Casmurro', 'Machado de Assis');
  LivroDigital digital = LivroDigital('Clean Code', 'Robert C. Martin', 3.5);

  print('--- Livro Físico ---');
  livro.exibirInformacoes();

  print('');

  print('--- Livro Digital ---');
  digital.exibirInformacoes();
}
