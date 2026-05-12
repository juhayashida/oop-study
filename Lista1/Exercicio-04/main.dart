class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);

  void exibir() {
    print('Produto: $nome');
    print('Preço: R\$ ${preco.toStringAsFixed(2)}');
  }
}

class ProdutoPerecivel extends Produto {
  String dataValidade;

  ProdutoPerecivel(String nome, double preco, this.dataValidade)
      : super(nome, preco);

  @override
  void exibir() {
    super.exibir();
    print('Data de validade: $dataValidade');
  }
}

void main() {
  var p1 = Produto('brinco', 9.99);
  var p2 = ProdutoPerecivel('seda', 15.99, '10/05/2028');

  print('=== Produto comum ===');
  p1.exibir();

  print('\n=== Produto perecível ===');
  p2.exibir();
}s