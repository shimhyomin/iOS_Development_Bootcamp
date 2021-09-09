import Foundation

var pizzaInches: Int =  10 {
    willSet {
        print(pizzaInches)
        print(newValue)
    }
    didSet {
        print(oldValue)
        print(pizzaInches)
        
        if pizzaInches >= 18 {
            print("Invalid size specified, pizzaInches set to 18.")
            pizzaInches = 18
        }
    }
}

pizzaInches = 33
print(pizzaInches)

var numberOfPeople: Int = 6
let slicesperPerson: Int = 5

var numberOfSlices: Int {
    get {
        return pizzaInches - 4
    }
    set {
        // set이 없으면 도중에 numberOfSlices 수정 못 한다.
        print("numberOfSlices now has a new values which is \(newValue)")
    }
}

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesperPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices =  numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesperPerson
    }
}

numberOfPizza = 4

print(numberOfSlices)
numberOfSlices = 12
