void main() {
  
  //si tenemos que crear una instacia de nuestra clase pero lo que recibimos el resultado de una peticion http o tener que transformar un objeto
  
  final Map<String, dynamic>rawJson ={
    'name': 'Tony Stark',
    'power' : 'Money',
    'isAlive': true
  };
  
  final iroman = Hero.fromJson(rawJson);
  //Esto nos va a crear la instancia de nuestra clase Hero basado en el Json que le       mandamos.
  
  print(iroman);
}

class Hero {
  String name;
  String power;
  bool isAlive;
  Hero({required this.name, required this.power, required this.isAlive});
  
  //el siguiente seria el constructor con nombre para poder usar el Map
  
  Hero.fromJson(Map<String, dynamic> json) 
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No alive found';

  //Hero(String pName, String pPower) : name = pName, power = pPower;

  @override
  String toString() {
    return '$name - $power - isAlive : ${isAlive ? 'Yes' : "No"}';
  }
}
