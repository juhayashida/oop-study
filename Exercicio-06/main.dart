class Ingresso {
  String evento;
  double valor;

  Ingresso(this.evento, this.valor);

  void exibirResumo() {
    print('Evento: $evento');
    print('Valor: R\$ ${valor.toStringAsFixed(2)}');
  }
}

class IngressoVip extends Ingresso {
  double valorAdicional;

  IngressoVip(String evento, double valor, this.valorAdicional)
      : super(evento, valor);

  double valorFinal() {
    return valor + valorAdicional;
  }

  @override
  void exibirResumo() {
    super.exibirResumo();
    print('Adicional VIP: R\$ ${valorAdicional.toStringAsFixed(2)}');
    print('Valor final: R\$ ${valorFinal().toStringAsFixed(2)}');
  }
}

void main() {
  Ingresso ingresso = Ingresso('Show de Rock', 120.00);
  IngressoVip vip = IngressoVip('Show de Rock', 120.00, 80.00);

  print('--- Ingresso Comum ---');
  ingresso.exibirResumo();

  print('');

  print('--- Ingresso VIP ---');
  vip.exibirResumo();
}
