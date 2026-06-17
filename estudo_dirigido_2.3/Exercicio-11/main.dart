abstract class Atacavel {
  void atacar(Personagem alvo);
}

abstract class Magico {
  void lancarMagia(Personagem alvo);
}

abstract class Flamejante {
  void soltarFogo(Personagem alvo);
}

abstract class Personagem {
  String nome;
  double vida;
  int nivel;

  Personagem(this.nome, this.vida, this.nivel);

  void receberDano(double dano) {
    vida -= dano;
    if (vida < 0) vida = 0;
  }

  bool estaVivo() => vida > 0;

  void exibirStatus();

  @override
  String toString();
}

abstract class Combatente extends Personagem implements Atacavel {
  double forca;

  Combatente(String n, double v, int l, this.forca)
      : super(n, v, l);
}

abstract class Inimigo extends Personagem {
  double recompensa;

  Inimigo(String n, double v, int l, this.recompensa)
      : super(n, v, l);
}

class Guerreiro extends Combatente {
  double armadura;

  Guerreiro(String n, double v, int l, double f, this.armadura)
      : super(n, v, l, f);

  @override
  void atacar(Personagem alvo) {
    alvo.receberDano(forca);
  }

  @override
  void exibirStatus() {
    print(toString());
  }

  @override
  String toString() =>
      'Guerreiro | $nome | $vida | $nivel | $forca | $armadura';
}

class Arqueiro extends Combatente {
  int flechas;

  Arqueiro(String n, double v, int l, double f, this.flechas)
      : super(n, v, l, f);

  @override
  void atacar(Personagem alvo) {
    if (flechas <= 0) return;
    flechas--;
    alvo.receberDano(forca);
  }

  @override
  void exibirStatus() {
    print(toString());
  }

  @override
  String toString() =>
      'Arqueiro | $nome | $vida | $nivel | $forca | $flechas';
}

class Mago extends Combatente implements Magico {
  double mana;

  Mago(String n, double v, int l, double f, this.mana)
      : super(n, v, l, f);

  @override
  void atacar(Personagem alvo) {
    alvo.receberDano(forca);
  }

  @override
  void lancarMagia(Personagem alvo) {
    if (mana < 10) return;
    mana -= 10;
    alvo.receberDano(forca + 15);
  }

  @override
  void exibirStatus() {
    print(toString());
  }

  @override
  String toString() =>
      'Mago | $nome | $vida | $nivel | $forca | $mana';
}

class Goblin extends Inimigo {
  double velocidade;

  Goblin(String n, double v, int l, double r, this.velocidade)
      : super(n, v, l, r);

  @override
  void exibirStatus() {
    print(toString());
  }

  @override
  String toString() =>
      'Goblin | $nome | $vida | $nivel | $recompensa | $velocidade';
}

class Dragao extends Inimigo implements Flamejante {
  double poderFogo;

  Dragao(String n, double v, int l, double r, this.poderFogo)
      : super(n, v, l, r);

  @override
  void soltarFogo(Personagem alvo) {
    alvo.receberDano(poderFogo);
  }

  @override
  void exibirStatus() {
    print(toString());
  }

  @override
  String toString() =>
      'Dragão | $nome | $vida | $nivel | $recompensa | $poderFogo';
}

void main() {
  var thoran = Guerreiro('Thoran', 120, 5, 20, 15);
  var lia = Arqueiro('Lia', 80, 4, 15, 10);
  var merlin = Mago('Merlin', 70, 6, 10, 50);
  var gob = Goblin('Gob', 40, 2, 100, 25);
  var ignis = Dragao('Ignis', 200, 10, 1000, 35);

  var atacaveis = [thoran, lia];
  var magicos = [merlin];
  var flamejantes = [ignis];
  var personagens = [thoran, lia, merlin, gob, ignis];

  for (var p in atacaveis) {
    p.atacar(gob);
  }

  for (var m in magicos) {
    m.lancarMagia(ignis);
  }

  for (var f in flamejantes) {
    f.soltarFogo(thoran);
  }

  for (var p in personagens) {
    p.exibirStatus();
  }
}