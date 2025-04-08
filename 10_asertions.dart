void main() {
  final mySquare = Square(side: -10);

  //mySquare._side = 5;
  //print('area: ${mySquare.calculateArea()}'); con un metodo normal
  print('area: ${mySquare.area}'); // con un getter
}

class Square {
  final double _side;

  Square({required double side})
    : assert(side >= 0, 'side must be >= 0'),
      _side = side;

  double get area {
    return _side * _side;
  } // misma funcionalidad que el metodo calculateArea pero con un getter

  double calculateArea() {
    return _side * _side;
  }
}
