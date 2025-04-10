void main() async  {

  print('Inicio del programa');

  try {
    final value = await httpGet('https://api.example.com/data');
    print('Resultado: $value');
  } on Exception catch (err) {
    print('Tenemos una Excepcion: $err');
  } catch (err) {
    print('Error: $err');
  } finally {
    print('Fin del try catch');
  }
    print('Fin del programa');
}

Future<String> httpGet( String url ) async {
  // Simulando una llamada HTTP
  await Future.delayed(Duration(seconds: 2)); // Simula un retraso de 2 segundos
//throw 'Error en la peticion HTTP'; // Simula un error en la petición
  // return 'Respuesta de la API'; // Descomentar para simular una respuesta exitosa
   throw Exception('Error en la petición HTTP'); // Descomentar para simular un error
}