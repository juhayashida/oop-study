class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void exibirDados() {
    print('Nome: $nome');
    print('Idade: $idade');
  }
}

class Aluno extends Pessoa {
  String matricula;
  String curso;

  Aluno(
    String nome,
    int idade,
    this.matricula,
    this.curso,
  ) : super(nome, idade);

  @override
  void exibirDados() {
    print('Nome: $nome');
    print('Idade: $idade');
    print('Matrícula: $matricula');
    print('Curso: $curso');
  }
}

void main() {
  Aluno aluno = Aluno(
    'João Silva',
    20,
    '2025001',
    'Análise e Desenvolvimento de Sistemas',
  );

  aluno.exibirDados();
}