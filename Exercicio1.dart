import 'dart:io';

int somaLista(List<int> numeros) {
  int soma = 0;
  
  for (int numero in numeros) {
    soma += numero;
  }
  
  return soma;
}

void main() {
  List<int> numeros = [1, 2, 3, 4, 5];
  int resultado = somaLista(numeros);
  print("A soma dos elementos da lista é: $resultado");
}