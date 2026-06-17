abstract class Ligavel {
  void ligar();
  void desligar();
}

class Dispositivo {
  String marca;
  String modelo;

  Dispositivo(this.marca, this.modelo);

  @override
  String toString();
}

class Smartphone extends Dispositivo implements Ligavel {
  String sistemaOperacional;

  Smartphone(String m, String mo, this.sistemaOperacional)
      : super(m, mo);

  @override
  void ligar() => print('$marca $modelo ligando');

  @override
  void desligar() => print('$marca $modelo desligando');

  @override
  String toString() =>
      'Smartphone | $marca $modelo | $sistemaOperacional';
}

class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;

  Notebook(String m, String mo, this.memoriaRam)
      : super(m, mo);

  @override
  void ligar() => print('$marca $modelo ligando');

  @override
  void desligar() => print('$marca $modelo desligando');

  @override
  String toString() =>
      'Notebook | $marca $modelo | ${memoriaRam}GB';
}

class Televisao extends Dispositivo implements Ligavel {
  int tamanhoPolegadas;

  Televisao(String m, String mo, this.tamanhoPolegadas)
      : super(m, mo);

  @override
  void ligar() => print('$marca $modelo ligando');

  @override
  void desligar() => print('$marca $modelo desligando');

  @override
  String toString() =>
      'TV | $marca $modelo | ${tamanhoPolegadas}"';
}