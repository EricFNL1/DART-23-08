Map<String, int> contarOcorrencias(List<String> palavras) {
  Map<String, int> contagem = {};

  for (String palavra in palavras) {
    // Converte a palavra para minúsculas para contar de forma insensível a maiúsculas e minúsculas
    String palavraMinuscula = palavra.toLowerCase();

    // Se a palavra já estiver no mapa, incrementa a contagem; caso contrário, adiciona ao mapa
    if (contagem.containsKey(palavraMinuscula)) {
      contagem[palavraMinuscula] = contagem[palavraMinuscula]! + 1;
    } else {
      contagem[palavraMinuscula] = 1;
    }
  }

  return contagem;
}

void main() {
  List<String> palavras = [
    'casa',
    'Carro',
    'casa',
    'bicicleta',
    'Carro',
    'bicicleta',
    'Carro'
  ];

  Map<String, int> resultado = contarOcorrencias(palavras);

  print(resultado);
}
