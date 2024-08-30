int contarPalavrasUnicas(String texto) {
  // Converte a string para minúsculas para evitar distinções entre maiúsculas e minúsculas
  String textoMinusculo = texto.toLowerCase();

  // Divide o texto em palavras usando o espaço como delimitador
  List<String> palavras = textoMinusculo.split(' ');

  // Cria um conjunto para armazenar palavras únicas
  Set<String> palavrasUnicas = {};

  // Adiciona cada palavra ao conjunto
  for (String palavra in palavras) {
    if (palavra.isNotEmpty) {
      palavrasUnicas.add(palavra);
    }
  }

  // Retorna o número de palavras únicas
  return palavrasUnicas.length;
}

void main() {
  String texto = 'Este é um exemplo de texto com palavras repetidas este texto';
  int totalPalavrasUnicas = contarPalavrasUnicas(texto);

  print('Total de palavras únicas: $totalPalavrasUnicas');
}
