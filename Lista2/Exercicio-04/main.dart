class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    saldo -= valor;
  }

  void exibirSaldo() {
    print('Titular: $titular');
    print('Saldo: R\$ $saldo');
    print('');
  }
}

abstract class Rentavel {
  void aplicarRendimento();
}

class ContaPoupanca extends ContaBancaria implements Rentavel {
  ContaPoupanca(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * 0.01;
  }
}

class ContaCorrente extends ContaBancaria implements Rentavel {
  ContaCorrente(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * 0.05;
  }
}

void main() {
  ContaPoupanca poupanca = ContaPoupanca('João', 1000.00);
  ContaCorrente corrente = ContaCorrente('Maria', 1000.00);

  poupanca.depositar(500.00);
  poupanca.aplicarRendimento();
  poupanca.exibirSaldo();

  corrente.depositar(500.00);
  corrente.aplicarRendimento();
  corrente.exibirSaldo();
}