import 'dart:io';


void main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6]; // Lista de números
  List<int> pares = []; // Lista para armazenar números pares

  for (int numero in numeros) {
    if (numero % 2 == 0) { // Verifica se o número é par
      pares.add(numero); // Adiciona o número par à lista
    }
  }

  print('Números pares: $pares');
}