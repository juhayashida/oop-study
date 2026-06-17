abstract class Calculavel {
  double valorFinal();
}

class Ingresso {
  String evento;
  double valor;

  Ingresso(this.evento, this.valor);

  @override
  String toString();
}

class IngressoVip extends Ingresso implements Calculavel {
  double valorAdicional;

  IngressoVip(String e, double v, this.valorAdicional)
      : super(e, v);

  @override
  double valorFinal() => valor + valorAdicional;

  @override
  String toString() =>
      'VIP | $evento | $valor | Final: ${valorFinal()}';
}

class IngressoPromocional extends Ingresso implements Calculavel {
  double desconto;

  IngressoPromocional(String e, double v, this.desconto)
      : super(e, v);

  @override
  double valorFinal() => valor - desconto;

  @override
  String toString() =>
      'Promo | $evento | $valor | Final: ${valorFinal()}';
}

class IngressoCamarote extends Ingresso implements Calculavel {
  double taxaServico;
  String localizacao;

  IngressoCamarote(String e, double v, this.taxaServico, this.localizacao)
      : super(e, v);

  @override
  double valorFinal() => valor + taxaServico;

  @override
  String toString() =>
      'Camarote | $evento | $valor | $localizacao | Final: ${valorFinal()}';
}