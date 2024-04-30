bool esPalindromo(String cadena) {
  // 1. Normalizar la cadena:
  //    a. Convertir a minúsculas
  //    b. Eliminar caracteres no alfabéticos
  String normalizada = cadena.toLowerCase().replaceAll(RegExp(r'[\W_]+'), '');

  // 2. Verificar si la cadena es un palíndromo:
  //    Comparamos la cadena normalizada con su versión invertida
  String invertida = normalizada.split('').reversed.join('');

  return normalizada == invertida;
}

void main() {
  // Pruebas con varios ejemplos
  print(esPalindromo("Anita lava la tina")); // Debería ser true
  print(esPalindromo("1234abcdcba4321")); // Debería ser true
  print(esPalindromo("Hola mundo")); // Debería ser false
  print(esPalindromo("A man, a plan, a canal, Panama")); // Debería ser true
}
