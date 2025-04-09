void main () {

    final windPlant = WindPlant(initialEnergy: 1000);
    final nuclearPlant = NuclearPlant(energyLeft: 1000); //instancia de la clase NuclearPlant
    print ('wind : ${chargePhone (windPlant)}'); //llamo a la funcion chargePhone y le paso el objeto windPlan que es de tipo WindPlant
    print ('nuclear : ${chargePhone (nuclearPlant)}');
}

double chargePhone (EnergyPlan plant){ //cualquier plant que extenda de EnergyPlan, por elejempo 
                                        //WindPlant, se va a poder implementar en esta funcion
    if(plant.energyLeft < 10){
      throw Exception('Not enough energy to charge the phone');
    }

    return plant.energyLeft - 10; //si no hay suficiente energia, lanza una excepcion 
}

enum PlanType {
    nuclear,
    wind,
    water
} // LOS ENUM SON LOS UNICOS QUE NO TERMINAN EN ; EN DART

//Este seria la clase Molde o Abstracta EnergyPlan
//que define las variables y los metodos que van a tener las clases que hereden de ella
abstract class EnergyPlan {

    double energyLeft;
    final PlanType type; // nuclear, wind, water

    // constructor
    EnergyPlan({
        required this.energyLeft,
        required this.type,
    });

    void consumeEnergy(double amount) ; //metodo abstracto o solo su "firma" se pueden ir definiendo pero no los implementan o si
}
//Esta seria la definicion de la clase abstracta EnergyPlan
class WindPlant extends EnergyPlan { //voy a heredar las variables, el constructor 
//y sus metodos de EnergyPlan

  WindPlant ({required double initialEnergy}
  ) : super ( //super llama al constructor de la clase padre
    energyLeft: initialEnergy,
    type: PlanType.wind,
  );

  @override //indica que estoy sobreescribiendo el metodo consumeEnergy de la clase EnergyPlan
  void consumeEnergy(double amount) { //implementacion del metodo abstracto consumeEnergy de la clase EnergyPlan
    energyLeft -= amount;
  } //implementacion del metodo abstracto consumeEnergy de la clase EnergyPlan
}


class NuclearPlant implements EnergyPlan { 
  @override
  double energyLeft;
  
  final PlanType type= PlanType.nuclear; // nuclear, wind, water

  NuclearPlant ({ required this.energyLeft});

  @override
  void consumeEnergy(double amount) { //implementacion del metodo abstracto consumeEnergy de la clase EnergyPlan
    energyLeft -= (amount * 0.5);
  } //implementacion del metodo abstracto consumeEnergy de la clase EnergyPlan
}//