void main () {

    final windPlan = EnergyPlan();
}

enum PlanType {
    nuclear,
    wind,
    water
} // LOS ENUM SON LOS UNICOS QUE NO TERMINAN EN ; EN DART

abstract class EnergyPlan {

    double energyLeft;
    PlanType type; // nuclear, wind, water

    // constructor
    EnergyPlan({
        required this.energyLeft,
        required this.type,
    });

    void consumeEnergy(double amount) ; //metodo abstracto se pueden ir definiendo pero no los implementan o si
}

//Esta seria la definicion de la clase abstracta EnergyPlan