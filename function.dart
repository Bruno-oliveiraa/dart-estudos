import 'dart:io';

main() {
  final String name = pegarNome();
  final double peso = pegarDouble('Digite o seu peso (kg):');
  final double altura = pegarDouble('Digite a sua altura (m):');

  if (peso <= 0 || altura <= 0) {
    print('peso e altura devem ser maiores que zero para calcular o IMC');
    return;
  }
  double imc = calcularIMC(peso, altura);

  print('\nNome: $name');
  print('Seu IMC é: ${imc.toStringAsFixed(2)}');

  // Classifica o IMC de acordo com as faixas padrão da OMS
  if (imc < 16) {
    print('Magreza Grave');
  } else if (imc < 17) {
    print('Magreza Moderada');
  } else if (imc < 18.5) {
    print('Magreza Leve');
  } else if (imc < 25) {
    print('Peso Ideal');
  } else if (imc < 30) {
    print('Sobrepeso');
  } else if (imc < 35) {
    print('Obesidade Grau I');
  } else if (imc < 40) {
    print('Obesidade Grau II');
  } else if (imc >= 40) {
    print('Obesidade Grau III');
  }
}

String pegarNome() {
  // Solicita o nome do usuário
  stdout.write('Digite o seu nome:');
  final String? name = stdin.readLineSync();
  return name?.trim().isNotEmpty == true ? name! : 'Anônimo';
}

double pegarDouble(String mensagem) {
  while (true) {
    stdout.write(mensagem);
    final String? input = stdin.readLineSync();
    final double? valor = double.tryParse(input ?? '');
    if (valor == null) {
      print('Entrada inválida1 Por favor, digite um número válido.');
      continue;
    }
    if (valor <= 0) {
      print('O valor deve ser maior que zero.');
      continue;
    }
    return valor;
  }
}

// Calcula o IMC com base no peso e altura informados
double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}

