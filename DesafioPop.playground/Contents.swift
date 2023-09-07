import UIKit

protocol Vehicle {
    var name: String { get }
    var canFly: Bool { get }
}

protocol Flyable {
    var maximumFlightLevel: Int { get }
}

extension Vehicle {
    var canFly: Bool { self is Flyable }
}

struct Car: Vehicle {
    var name: String
}

struct AirPlaine: Vehicle, Flyable  {
    var name: String
    var maximumFlightLevel: Int
}

let bmw320i = Car(name: "320i")
let boeing777 = AirPlaine(name: "777", maximumFlightLevel: 410)

func isAbleToFly(vehicle: Vehicle) {
    print("O veículo registrado como \(vehicle.name) consegue voar? \(vehicle.canFly ? "Sim" : "Não")")
}

isAbleToFly(vehicle: bmw320i)
isAbleToFly(vehicle: boeing777)
