abstract class Fichavel {
  void exibirFicha();
}

abstract class Veiculo {
  String marca;
  String modelo;
  int ano;

  Veiculo(this.marca, this.modelo, this.ano);

  @override
  String toString();
}

class Carro extends Veiculo implements Fichavel {
  int quantidadePortas;

  Carro(String m, String mo, int a, this.quantidadePortas)
      : super(m, mo, a);

  @override
  String toString() => 'Carro | $marca $modelo $ano | $quantidadePortas portas';

  @override
  void exibirFicha() => print(toString());
}

class Moto extends Veiculo implements Fichavel {
  int cilindradas;

  Moto(String m, String mo, int a, this.cilindradas)
      : super(m, mo, a);

  @override
  String toString() => 'Moto | $marca $modelo $ano | $cilindradas cc';

  @override
  void exibirFicha() => print(toString());
}

class Caminhao extends Veiculo implements Fichavel {
  double capacidadeCarga;

  Caminhao(String m, String mo, int a, this.capacidadeCarga)
      : super(m, mo, a);

  @override
  String toString() =>
      'Caminhão | $marca $modelo $ano | $capacidadeCarga toneladas';

  @override
  void exibirFicha() => print(toString());
}