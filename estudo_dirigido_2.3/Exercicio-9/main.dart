abstract class Processavel {
  double valorFinal();
  void exibirPedido();
}

class Pedido {
  String codigo;
  double valorTotal;

  Pedido(this.codigo, this.valorTotal);

  @override
  String toString();
}

class PedidoDelivery extends Pedido implements Processavel {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(String c, double v, this.enderecoEntrega, this.taxaEntrega)
      : super(c, v);

  @override
  double valorFinal() => valorTotal + taxaEntrega;

  @override
  void exibirPedido() => print(toString());

  @override
  String toString() =>
      'Delivery | $codigo | $valorTotal | $enderecoEntrega | ${valorFinal()}';
}

class PedidoRetirada extends Pedido implements Processavel {
  String nomeCliente;

  PedidoRetirada(String c, double v, this.nomeCliente)
      : super(c, v);

  @override
  double valorFinal() => valorTotal;

  @override
  void exibirPedido() => print(toString());

  @override
  String toString() =>
      'Retirada | $codigo | $valorTotal | $nomeCliente | ${valorFinal()}';
}

class PedidoExpress extends Pedido implements Processavel {
  double taxaUrgencia;

  PedidoExpress(String c, double v, this.taxaUrgencia)
      : super(c, v);

  @override
  double valorFinal() => valorTotal + taxaUrgencia;

  @override
  void exibirPedido() => print(toString());

  @override
  String toString() =>
      'Express | $codigo | $valorTotal | ${valorFinal()}';
}