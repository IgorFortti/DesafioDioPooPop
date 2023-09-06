import UIKit

enum VehicleType: String {
    case car = "Carro"
    case truck = "Caminhão"
    case bus = "Ônibus"
    var description: String {
        return self.rawValue
    }
}

enum CarType: String {
    case coupe = "Coupe"
    case hatch = "Hatch"
    case sedan = "Sedan"
    var description: String {
        return self.rawValue
    }
}

class Vehicle {
    
    var vehicleType: VehicleType
    
    init(vehicleType: VehicleType) {
        self.vehicleType = vehicleType
    }
}

class Car: Vehicle {
    var carType: CarType
    var name: String
    
    init(carType: CarType, name: String) {
        self.carType = carType
        self.name = name
        super.init(vehicleType: .car)
    }
}

let myCars: [Car] = [Car(carType: .sedan, name: "BMW"),
                     Car(carType: .coupe, name: "Audi")]

func informationAboutMyCars() async {
    for car in myCars {
        let information = "Esse é um veículo do tipo \(car.vehicleType.description), do tipo \(car.carType.description), identificado como \(car.name.description)"
        print(information)
    }
}

Task {
    await informationAboutMyCars()
}



