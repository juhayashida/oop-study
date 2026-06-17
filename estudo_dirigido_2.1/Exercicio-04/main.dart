class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
    print('Depósito de R\$ ${valor.toStringAsFixed(2)} realizado.');
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print('Saque de R\$ ${valor.toStringAsFixed(2)} realizado.');
    } else {
      print('Saldo insuficiente.');
    }
  }

  void exibirSaldo() {
    print('Titular: $titular');
    print('Saldo: R\$ ${saldo.toStringAsFixed(2)}');
  }
}

class ContaPoupanca extends ContaBancaria {
  double taxaRendimento = 0.01;

  ContaPoupanca(String titular, double saldo)
      : super(titular, saldo);

  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;
  }
}

class ContaCorrente extends ContaBancaria {
  double taxaRendimento = 0.05; 

  ContaCorrente(String titular, double saldo)
      : super(titular, saldo);

  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;
  }
}

void main() {
  ContaPoupanca poupanca = ContaPoupanca('Maria', 1000);
  ContaCorrente corrente = ContaCorrente('João', 1000);

  print('--- Antes do rendimento ---');
  poupanca.exibirSaldo();
  corrente.exibirSaldo();

  poupanca.aplicarRendimento();
  corrente.aplicarRendimento();

  print('\n--- Depois do rendimento ---');
  poupanca.exibirSaldo();
  corrente.exibirSaldo();
}
  print('\n=== Produto perecível ===');
  p2.exibir();
}s