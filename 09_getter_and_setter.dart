void main() {
  final mySquare = Square(side: 10);

  mySquare._side = 5;
  //print('area: ${mySquare.calculateArea()}'); con un metodo normal
  print('area: ${mySquare.area}'); // con un getter
}

class Square {
  final double _side;

  Square({required double side}) : _side = side;

  double get area {
    return _side * _side;
  } // misma funcionalidad que el metodo calculateArea pero con un getter

set side(double value){
  print('setting new value $value');
  if(value <= 0){
    throw Exception('El lado no puede ser menor o igual a cero');
  }
  _side = value;
}  //con el set lo que hacemos es que podemos cambiar el valor de la variable _side, pero no podemos cambiar el valor de la variable _side directamente, ya que es final.
  double calculateArea() {
    return _side * _side;
  }
}
