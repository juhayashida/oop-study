class Personagem {
  String nome;
  int vida;
  int nivel;

  Personagem(this.nome, this.vida, this.nivel)
      : assert(nome.isNotEmpty, 'O nome não pode ser vazio.'),
        assert(vida >= 0, 'A vida não pode ser negativa.'),
        assert(nivel >= 1, 'O nível deve ser maior ou igual a 1.');

  void exibirStatus() {
    print('Nome: $nome | Vida: $vida | Nível: $nivel');
  }

  void receberDano(int quantidade) {
    vida -= quantidade;
    if (vida < 0) {
      vida = 0;
    }
  }

  bool estaVivo() {
    return vida > 0;
  }
}

class Combatente extends Personagem {
  int forca;

  Combatente(String nome, int vida, int nivel, this.forca)
      : super(nome, vida, nivel);

  void atacar(Personagem alvo) {
    print('$nome ataca ${alvo.nome} causando $forca de dano!');
    alvo.receberDano(forca);
  }
}

class Guerreiro extends Combatente {
  int armadura;

  Guerreiro(String nome, int vida, int nivel, int forca, this.armadura)
      : super(nome, vida, nivel, forca);

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Armadura: $armadura');
  }

  void ataquePesado(Personagem alvo) {
    int dano = forca * 2;
    print('$nome desfere um ataque pesado em ${alvo.nome} causando $dano de dano!');
    alvo.receberDano(dano);
  }
}

class Arqueiro extends Combatente {
  int flechas;

  Arqueiro(String nome, int vida, int nivel, int forca, this.flechas)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    if (flechas <= 0) {
      print('$nome não pode atacar: sem flechas disponíveis!');
      return;
    }
    flechas--;
    print('$nome dispara uma flecha em ${alvo.nome} causando $forca de dano! '
        '(Flechas restantes: $flechas)');
    alvo.receberDano(forca);
  }
}

class Mago extends Combatente {
  int mana;

  Mago(String nome, int vida, int nivel, int forca, this.mana)
      : super(nome, vida, nivel, forca);

  void lancarMagia(Personagem alvo) {
    if (mana < 10) {
      print('$nome não tem mana suficiente para lançar magia!');
      return;
    }
    int dano = forca + 15;
    mana -= 10;
    print('$nome lança uma magia em ${alvo.nome} causando $dano de dano! '
        '(Mana restante: $mana)');
    alvo.receberDano(dano);
  }
}

class Inimigo extends Personagem {
  int recompensa;

  Inimigo(String nome, int vida, int nivel, this.recompensa)
      : super(nome, vida, nivel);

  void exibirRecompensa() {
    print('$nome concede $recompensa de recompensa ao ser derrotado.');
  }
}

class Goblin extends Inimigo {
  int velocidade;

  Goblin(String nome, int vida, int nivel, int recompensa, this.velocidade)
      : super(nome, vida, nivel, recompensa);

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Velocidade: $velocidade');
  }
}

class Dragao extends Inimigo {
  int poderDeFogo;

  Dragao(String nome, int vida, int nivel, int recompensa, this.poderDeFogo)
      : super(nome, vida, nivel, recompensa);

  void soltarFogo(Personagem alvo) {
    print('$nome solta fogo em ${alvo.nome} causando $poderDeFogo de dano!');
    alvo.receberDano(poderDeFogo);
  }
}

void main() {
  Guerreiro thoran = Guerreiro('Thoran', 120, 5, 20, 15);
  Arqueiro lia = Arqueiro('Lia', 90, 4, 15, 3);
  Mago merlin = Mago('Merlin', 80, 6, 10, 30);
  Goblin gob = Goblin('Gob', 50, 2, 10, 8);
  Dragao ignis = Dragao('Ignis', 200, 10, 100, 35);

  print('=== Início do combate ===\n');

  thoran.atacar(gob);
  print('');

  lia.atacar(gob);
  print('');

  merlin.lancarMagia(ignis);
  print('');

  ignis.soltarFogo(thoran);
  print('');

  print('=== Status final dos personagens ===\n');

  thoran.exibirStatus();
  print('Vivo: ${thoran.estaVivo()}\n');

  lia.exibirStatus();
  print('Vivo: ${lia.estaVivo()}\n');

  merlin.exibirStatus();
  print('Vivo: ${merlin.estaVivo()}\n');

  gob.exibirStatus();
  gob.exibirRecompensa();
  print('Vivo: ${gob.estaVivo()}\n');

  ignis.exibirStatus();
  ignis.exibirRecompensa();
  print('Vivo: ${ignis.estaVivo()}\n');
}