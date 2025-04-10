void main() async  {

  print('Inicio del programa');

  try {
    final value = await httpGet('https://api.example.com/data');
    print('Resultado: $value');
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Fin del programa');
  }
  // Simulando una llamada HTTP
}

Future<String> httpGet( String url ) async {
  // Simulando una llamada HTTP
  await Future.delayed(Duration(seconds: 2)); // Simula un retraso de 2 segundos
throw 'Error en la peticion HTTP'; // Simula un error en la petición
  // return 'Respuesta de la API'; // Descomentar para simular una respuesta exitosa
  // throw Exception('Error en la petición HTTP'); // Descomentar para simular un error
}