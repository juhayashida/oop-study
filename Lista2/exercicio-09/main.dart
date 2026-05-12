abstract class Pedido {
  String codigo;
  double valorTotal;

  Pedido(this.codigo, this.valorTotal);

  void exibirPedido();
}

class PedidoDelivery extends Pedido {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(String codigo, double valorTotal, this.enderecoEntrega, this.taxaEntrega)
      : super(codigo, valorTotal);

  @override
  void exibirPedido() {
    print('Pedido Delivery');
    print('Código: $codigo');
    print('Valor total: R\$ $valorTotal');
    print('Endereço de entrega: $enderecoEntrega');
    print('Taxa de entrega: R\$ $taxaEntrega');
    print('Valor final: R\$ ${valorTotal + taxaEntrega}');
    print('');
  }
}

class PedidoRetirada extends Pedido {
  String nomeCliente;

  PedidoRetirada(String codigo, double valorTotal, this.nomeCliente)
      : super(codigo, valorTotal);

  @override
  void exibirPedido() {
    print('Pedido Retirada');
    print('Código: $codigo');
    print('Valor total: R\$ $valorTotal');
    print('Cliente: $nomeCliente');
    print('');
  }
}

void main() {
  Pedido delivery = PedidoDelivery('001', 80.00, 'Rua das Flores, 123', 10.00);
  Pedido retirada = PedidoRetirada('002', 50.00, 'Maria');

  delivery.exibirPedido();
  retirada.exibirPedido();
}