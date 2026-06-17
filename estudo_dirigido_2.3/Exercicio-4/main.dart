abstract class Rentavel {
  void aplicarRendimento();
}

class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  @override
  String toString() => '$titular | $saldo';
}

class ContaPoupanca extends ContaBancaria implements Rentavel {
  ContaPoupanca(String t, double s) : super(t, s);

  @override
  void aplicarRendimento() => saldo += saldo * 0.01;

  @override
  String toString() => 'Poupança | ${super.toString()}';
}

class ContaCorrente extends ContaBancaria implements Rentavel {
  ContaCorrente(String t, double s) : super(t, s);

  @override
  void aplicarRendimento() => saldo += saldo * 0.05;

  @override
  String toString() => 'Corrente | ${super.toString()}';
}

class ContaInvestimento extends ContaBancaria implements Rentavel {
  ContaInvestimento(String t, double s) : super(t, s);

  @override
  void aplicarRendimento() => saldo += saldo * 0.08;

  @override
  String toString() => 'Investimento | ${super.toString()}';
}