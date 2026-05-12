class Produto {
 String nome;
 double preco;
 Produto(this.nome, this.preco);
}
abstract class Exibivel {
 void exibir();
}
class ProdutoPerecivel extends Produto implements Exibivel {
 String dataValidade;
 ProdutoPerecivel(
 String nome,
 double preco,
 this.dataValidade,
 ) : super(nome, preco);
 @override
 void exibir() {
 print('Produto perecível');
 print('Nome: $nome');
 print('Preço: R\$ $preco');
 print('Data de validade: $dataValidade');
 }
}
void main() {
 ProdutoPerecivel produto = ProdutoPerecivel('Iogurte', 5.99, '10/06/2026');
 produto.exibir();
}