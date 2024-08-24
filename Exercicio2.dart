import 'dart:io';

int maiorValor(List<int> numeros) {
  if (numeros.isEmpty) {
    throw Exception("A lista não pode estar vazia");
  }
  
  int maior = numeros[0];
  
  for (int numero in numeros) {
    if (numero > maior) {
      maior = numero;
    }
  }
  
  return maior;
}

void main() {
  List<int> numeros = [1, 5, 3, 9, 2];
  int resultado = maiorValor(numeros);
  print("O maior valor da lista é: $resultado");
}