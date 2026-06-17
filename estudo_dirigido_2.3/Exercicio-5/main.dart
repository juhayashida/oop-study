abstract class Apresentavel {
  void exibirDados();
}

abstract class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  @override
  String toString();
}

class Aluno extends Pessoa implements Apresentavel {
  String matricula;
  String curso;

  Aluno(String n, int i, this.matricula, this.curso) : super(n, i);

  @override
  String toString() => 'Aluno | $nome $idade $matricula $curso';

  @override
  void exibirDados() => print(toString());
}

class Professor extends Pessoa implements Apresentavel {
  String disciplina;
  double salario;

  Professor(String n, int i, this.disciplina, this.salario)
      : super(n, i);

  @override
  String toString() => 'Professor | $nome $idade $disciplina $salario';

  @override
  void exibirDados() => print(toString());
}

class Coordenador extends Pessoa implements Apresentavel {
  String area;
  int tempoExperiencia;

  Coordenador(String n, int i, this.area, this.tempoExperiencia)
      : super(n, i);

  @override
  String toString() =>
      'Coordenador | $nome $idade $area $tempoExperiencia anos';

  @override
  void exibirDados() => print(toString());
}