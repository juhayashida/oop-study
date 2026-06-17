abstract class Sonoro {
  void emitirSom();
}

abstract class Animal {
  String nome;

  Animal(this.nome);

  @override
  String toString();
}

class Cachorro extends Animal implements Sonoro {
  Cachorro(String n) : super(n);

  @override
  void emitirSom() => print('$nome: au au');

  @override
  String toString() => 'Cachorro | $nome';
}

class Gato extends Animal implements Sonoro {
  Gato(String n) : super(n);

  @override
  void emitirSom() => print('$nome: miau');

  @override
  String toString() => 'Gato | $nome';
}

class Passaro extends Animal implements Sonoro {
  Passaro(String n) : super(n);

  @override
  void emitirSom() => print('$nome: piu piu');

  @override
  String toString() => 'Pássaro | $nome';
}

class Vaca extends Animal implements Sonoro {
  Vaca(String n) : super(n);

  @override
  void emitirSom() => print('$nome: muuu');

  @override
  String toString() => 'Vaca | $nome';
}

class Ovelha extends Animal implements Sonoro {
  Ovelha(String n) : super(n);

  @override
  void emitirSom() => print('$nome: bééé');

  @override
  String toString() => 'Ovelha | $nome';
}