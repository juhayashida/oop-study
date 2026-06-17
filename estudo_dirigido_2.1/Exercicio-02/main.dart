class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);

  void exibir() {
    print('Nome: $nome');
    print('Preço: R\$ ${preco.toStringAsFixed(2)}');
  }
}

class ProdutoPerecivel extends Produto {
  String dataValidade;

  ProdutoPerecivel(
    String nome,
    double preco,
    this.dataValidade,
  ) : super(nome, preco);

  @override
  void exibir() {
    super.exibir();
    print('Data de validade: $dataValidade');
  }
}

void main() {
  Produto produto = Produto('Feijão', 25.90);
  produto.exibir();

  print('------------------');

  ProdutoPerecivel leite condensado = ProdutoPerecivel(
    'Leite Condensado',
    6.50,
    '20/07/2026',
  );
  leite.condensado.exibir();
}