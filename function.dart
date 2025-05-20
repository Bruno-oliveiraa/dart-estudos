import 'dart:io';

main() {
  final String name = pegarNome();
  final double peso = pegarPeso();
  final double altura = pegarAltura();
  double imc = peso / (altura * altura);
  print('\n');

  print('Nome: $name');
  print('Seu IMC é: $imc');
  if (imc < 16) {
    print('Magreza Grave');
  }
  if (imc > 15.9 && imc < 17) {
    print('Magreza Moderada');
  }
  if (imc > 16.9 && imc < 18.5) {
    print('Magreza Leve');
  }
  if (imc > 18.4 && imc < 25) {
    print('Peso Ideal');
  }
  if (imc > 24.9 && imc < 30) {
    print('Sobrepeso');
  }
  if (imc > 29.9 && imc < 35) {
    print('Obesidade Grau I');
  }
  if (imc > 34.9 && imc < 40) {
    print('Obesidade Grau II');
  }
  if (imc >= 40) {
    print('Obesidade Grau III');
  }
}

String pegarNome() {
  print('Digite o seu nome:');
  final String? name = stdin.readLineSync();
  if (name == null) {
    return 'Anônimo';
  } else {
    return name;
  }
}

double pegarPeso() {
  print('Digite o seus peso:');
  final String? pesoString = stdin.readLineSync();
  if (pesoString == null) {
    return 0.0;
  } else {
    return double.parse(pesoString);
  }
}

double pegarAltura() {
  print('Digite a sua altura:');
  final String? alturaString = stdin.readLineSync();
  if (alturaString == null) {
    return 0.0;
  } else {
    return double.parse(alturaString);
  }
}
