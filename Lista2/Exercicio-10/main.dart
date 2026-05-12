class Dispositivo {
  String marca;
  String modelo;

  Dispositivo(this.marca, this.modelo);
}

abstract class Ligavel {
  void ligar();
  void desligar();
}

class Smartphone extends Dispositivo implements Ligavel {
  String sistemaOperacional;

  Smartphone(String marca, String modelo, this.sistemaOperacional)
      : super(marca, modelo);

  @override
  void ligar() {
    print('Smartphone $marca $modelo ligando...');
    print('Sistema operacional: $sistemaOperacional');
    print('');
  }

  @override
  void desligar() {
    print('Smartphone $marca $modelo desligando...');
    print('');
  }
}

class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;

  Notebook(String marca, String modelo, this.memoriaRam)
      : super(marca, modelo);

  @override
  void ligar() {
    print('Notebook $marca $modelo ligando...');
    print('Memória RAM: ${memoriaRam}GB');
    print('');
  }

  @override
  void desligar() {
    print('Notebook $marca $modelo desligando...');
    print('');
  }
}

void main() {
  Smartphone smartphone = Smartphone('Samsung', 'Galaxy S23', 'Android');
  Notebook notebook = Notebook('Dell', 'Inspiron 15', 16);

  smartphone.ligar();
  smartphone.desligar();
  notebook.ligar();
  notebook.desligar();
}