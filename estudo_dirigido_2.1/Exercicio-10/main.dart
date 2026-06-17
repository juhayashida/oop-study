class Dispositivo {
  String marca;
  String modelo;

  Dispositivo(this.marca, this.modelo);

  void ligar() {
    print('O dispositivo está ligando...');
  }
}

class Smartphone extends Dispositivo {
  String sistemaOperacional;

  Smartphone(
    String marca,
    String modelo,
    this.sistemaOperacional,
  ) : super(marca, modelo);

  @override
  void ligar() {
    print(
      'O smartphone $marca $modelo com $sistemaOperacional está ligando...',
    );
  }
}

void main() {
  Smartphone celular = Smartphone(
    'iphone',
    '16',
    'iOS',
  );


  celular.ligar();
}