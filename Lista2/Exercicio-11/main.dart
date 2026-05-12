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

  Personagem(this.nome, this.vida, this.nivel) {
    if (nome.isEmpty) throw Exception('Nome não pode ser vazio');
    if (vida < 0) throw Exception('Vida não pode ser negativa');
    if (nivel < 1) throw Exception('Nível deve ser maior ou igual a 1');
  }

  void receberDano(double dano) {
    vida -= dano;
    if (vida < 0) vida = 0;
  }

  bool estaVivo() {
    return vida > 0;
  }

  void exibirStatus();
}

abstract class Combatente extends Personagem implements Atacavel {
  double forca;

  Combatente(String nome, double vida, int nivel, this.forca)
      : super(nome, vida, nivel);
}

class Guerreiro extends Combatente {
  double armadura;

  Guerreiro(String nome, double vida, int nivel, double forca, this.armadura)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    print('$nome ataca ${alvo.nome} causando $forca de dano!');
    alvo.receberDano(forca);
  }

  void ataquesPesado(Personagem alvo) {
    double dano = forca * 2;
    print('$nome usa ataque pesado em ${alvo.nome} causando $dano de dano!');
    alvo.receberDano(dano);
  }

  @override
  void exibirStatus() {
    print('Guerreiro: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Força: $forca');
    print('Armadura: $armadura');
    print('');
  }
}

class Arqueiro extends Combatente {
  int flechas;

  Arqueiro(String nome, double vida, int nivel, double forca, this.flechas)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    if (flechas <= 0) {
      print('$nome não pode atacar, sem flechas!');
      return;
    }
    flechas--;
    print('$nome ataca ${alvo.nome} causando $forca de dano!');
    alvo.receberDano(forca);
  }

  @override
  void exibirStatus() {
    print('Arqueiro: $nome');
    print('Vida: $vida');
    print('Nível: $nivel');
    print('Força: $forca');
    print('Flechas: $flechas');
    print('');
  }
}

class Mago extends Combatente implements Magico {
  double mana;

  Mago(String nome, double vida, int nivel, double forca, this.mana)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    print('$nome ataca ${alvo.nome} causando $forca de dano!');
    alvo.receberDano(forca);
  }

  @override
  void lancarMagia(Personagem alvo) {
    if (mana < 10) {
      print('$nome não pode lançar magia, mana insuficiente!');
      return;
    }