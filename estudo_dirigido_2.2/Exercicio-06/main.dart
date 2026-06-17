class Ingresso {
  String evento;
  double valor;

  Ingresso(this.evento, this.valor);
}

abstract class Calculavel {
  double valorFinal();
}

class IngressoVip extends Ingresso implements Calculavel {
  double valorAdicional;

  IngressoVip(String evento, double valor, this.valorAdicional)
      : super(evento, valor);

  @override
  double valorFinal() {
    return valor + valorAdicional;
  }
}

class IngressoPromocional extends Ingresso implements Calculavel {
  double desconto;

  IngressoPromocional(String evento, double valor, this.desconto)
      : super(evento, valor);

  @override
  double valorFinal() {
    return valor - desconto;
  }
}

void main() {
  IngressoVip vip = IngressoVip('Show do Roberto Carlos', 200.00, 100.00);
  IngressoPromocional promocional = IngressoPromocional('Show do Roberto Carlos', 200.00, 50.00);

  print('Ingresso VIP');
  print('Evento: ${vip.evento}');
  print('Valor final: R\$ ${vip.valorFinal()}');
  print('');

  print('Ingresso Promocional');
  print('Evento: ${promocional.evento}');
  print('Valor final: R\$ ${promocional.valorFinal()}');
  print('');
}