abstract class Exibivel {
  void exibir();
}

class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);

  @override
  String toString();
}

class ProdutoPerecivel extends Produto implements Exibivel {
  String dataValidade;

  ProdutoPerecivel(String nome, double preco, this.dataValidade)
      : super(nome, preco);

  @override
  String toString() {
    return 'Perecível | $nome | $preco | $dataValidade';
  }

  @override
  void exibir() => print(toString());
}

class ProdutoEletronico extends Produto implements Exibivel {
  int garantiaMeses;

  ProdutoEletronico(String nome, double preco, this.garantiaMeses)
      : super(nome, preco);

  @override
  String toString() {
    return 'Eletrônico | $nome | $preco | $garantiaMeses meses';
  }

  @override
  void exibir() => print(toString());
}