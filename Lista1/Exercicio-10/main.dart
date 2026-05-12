class Pedido {
  int codigo;
  double valorTotal;

  Pedido(this.codigo, this.valorTotal);

  void exibirPedido() {
    print('Código: $codigo');
    print('Valor total: R\$ ${valorTotal.toStringAsFixed(2)}');
  }
}

class PedidoDelivery extends Pedido {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(int codigo, double valorTotal, this.enderecoEntrega, this.taxaEntrega)
      : super(codigo, valorTotal);

  double calcularValorFinal() {
    return valorTotal + taxaEntrega;
  }

  @override
  void exibirPedido() {
    super.exibirPedido();
    print('Endereço: $enderecoEntrega');
    print('Taxa de entrega: R\$ ${taxaEntrega.toStringAsFixed(2)}');
    print('Valor final: R\$ ${calcularValorFinal().toStringAsFixed(2)}');
  }
}

void main() {
  Pedido pedido = Pedido(1001, 85.00);
  PedidoDelivery delivery = PedidoDelivery(1002, 95.00, 'Rua das Flores, 42', 12.50);

  print('--- Pedido Comum ---');
  pedido.exibirPedido();

  print('');

  print('--- Pedido Delivery ---');
  delivery.exibirPedido();
}
