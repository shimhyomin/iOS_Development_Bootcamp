import Foundation

class Animal {
    var name: String
    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breatheUnderWater() {
        print("Breathing under water")
    }
}

let hyomin = Human(n: "Shim Hyomin")
let jack = Human(n: "Jack Bauer")
let nemo = Fish(n: "Nemo")

let neighbours = [hyomin, jack, nemo]   // -> Animal Class

let neighbour1 = neighbours[0]  // -> Animal Class

// is keyword는 tyep checking
if neighbours[2] is Human {
    print("First Neighbour is a Human")
}

// as! keyword는 Forced Downcast
func findNemo(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            //animal.breathUnderWater() -> Error
            let fish =  animal as! Fish
            fish.breatheUnderWater()
        }
    }
}
findNemo(from: neighbours)
// 잘못 downcast하는 경우
// let fish = neighbours[1] as! Fish -> Error!

// as? keyword는 downcast
if let fish = neighbours[1] as? Fish {
    fish.breatheUnderWater()
}

// as keyword는 upcast
let animalFish = nemo as Animal
// animalFish.breatheUnderWater() -> Error


// Any
// 어떤 멤버를 갖든 상관 x
let num = 12
let anyNeighbours: [Any] = [hyomin, jack, nemo, num]

// ANyObject
// let anyObjectNeighbours: [AnyObject] = [hyomin, jack, nemo, num] -> num Error! object는 class만 해당됨! struct도 int도 안된다

// NSObject
// let nsObjectNeighbours: [NSObject] = [hyomin, jack, nemo] -> Error
let number: NSNumber = 10
let word: NSString = "aba"
let nsObjec: [NSObject] = [number, word]

