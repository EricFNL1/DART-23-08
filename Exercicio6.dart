List<int> filtrarLista(List<int> numeros, bool Function(int) filtro) {
  List<int> resultado = [];

  for (int numero in numeros) {
    if (filtro(numero)) {
      resultado.add(numero);
    }
  }

  return resultado;
}

void main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Exemplo de filtro: selecionar apenas números pares
  List<int> numerosPares = filtrarLista(numeros, (int numero) => numero % 2 == 0);

  print('Números pares: $numerosPares');

  // Exemplo de filtro: selecionar apenas números maiores que 5
  List<int> numerosMaioresQueCinco = filtrarLista(numeros, (int numero) => numero > 5);

  print('Números maiores que cinco: $numerosMaioresQueCinco');
}
