Map<String, int> contarOcorrencias(List<String> palavras, Map<String, String> dicionario) {
  Map<String, int> contagem = {};

  for (String palavra in palavras) {
    // Converte a palavra para minúsculas para contar de forma insensível a maiúsculas e minúsculas
    String palavraMinuscula = palavra.toLowerCase();

    // Traduz a palavra usando o dicionário
    String traducao = dicionario[palavraMinuscula] ?? palavraMinuscula;

    // Se a tradução já estiver no mapa, incrementa a contagem; caso contrário, adiciona ao mapa
    if (contagem.containsKey(traducao)) {
      contagem[traducao] = contagem[traducao]! + 1;
    } else {
      contagem[traducao] = 1;
    }
  }

  return contagem;
}

void main() {
  // Dicionário de tradução
  Map<String, String> dicionario = {
    "apple": "maçã",
    "banana": "banana",
    "orange": "laranja",
    "avocado": "abacate",
    "strawberry": "morango",
    "pineaple": "abacaxi"
  };

  // Lista de palavras em inglês
  List<String> palavras = [
    'apple',
    'banana',
    'orange',
    'apple',
    'strawberry',
    'orange',
    'avocado',
    'banana',
    'pineaple',
    'apple'
  ];

  // Chama a função para contar as ocorrências com tradução
  Map<String, int> resultado = contarOcorrencias(palavras, dicionario);

  print(resultado);
}
