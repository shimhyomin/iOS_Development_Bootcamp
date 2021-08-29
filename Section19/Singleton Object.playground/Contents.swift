
import UIKit

class Car1 {
    var colour = "Red"
}

let myCar1 = Car1()
myCar1.colour = "Blue"

let yourCar1 = Car1()
print(yourCar1.colour)


// Singleton
let defaults = UserDefaults.standard //== static let singletonCar = Car()

class Car {
    var colour = "Red"
    
    static let singletonCar = Car()
}

let myCar = Car.singletonCar
myCar.colour = "Blue"

let yourCar = Car.singletonCar
print(yourCar.colour)
