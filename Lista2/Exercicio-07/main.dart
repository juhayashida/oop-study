abstract class Animal {
  String nome;

  Animal(this.nome);

  void emitirSom();
}

class Cachorro extends Animal {
  Cachorro(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome: au au');
  }
}

class Gato extends Animal {
  Gato(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome: miau');
  }
}

class Passaro extends Animal {
  Passaro(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome: piu piu');
  }
}

class Vaca extends Animal {
  Vaca(String nome) : super(nome);

  @override
  void emitirSom() {
    print('$nome: muuu');
  }
}

void main() {
  Animal cachorro = Cachorro('Rex');
  Animal gato = Gato('Mimi');
  Animal passaro = Passaro('Piu');
  Animal vaca = Vaca('Mimosa');

  cachorro.emitirSom();
  gato.emitirSom();
  passaro.emitirSom();
  vaca.emitirSom();
}