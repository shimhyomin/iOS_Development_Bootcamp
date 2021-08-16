// protocol 사용 예
protocol CanFly {
    // protocol에서는 함수 선언만!! body 없음!
    func fly()
}

class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell")
        }
    }
}

// Eagle은 날 수 있으니까 CnaFly 상속(?)
// class MyClass: Superclass, FirstProtocol, AnotherProtocol
class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
}

// Penguin은 못 나니까 Bird만 상속
class Penguin: Bird {
    
}

// Struct인 Airplane도 CanFly 상속(?) 가능
struct Airplane: CanFly {
    func fly() {
        print("The airplane uses its engine to lift off into the air.")
    }
}

// object로도 사용 가능
struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly){
        flyingObject.fly()
    }
}

//// protocol이 필요한 상황~~
class Bird1 {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell")
        }
    }
    
    func fly() {
        print("The bird flaps its wings and lifts off into the sky.")
    }
}

class Eagle1: Bird1 {
    
    func soar() {
        print("The eagle glides in the air uing air currents.")
    }
}

// 문제! 펭귄은 못 난다. fly 함수 문제
class Penguin1: Bird1 {
    func swim() {
        print("The penguin paddles through the water.")
    }
}

// -> 펭귄의 fly 문제 해결
struct FlyingMuseum1 {
    func flyingDemo(flyingObject: Bird1) {
        flyingObject.fly()
    }
}

// 문제! airplane은 날 수 있지만 새가 아님
struct Airplane1 {
    
}

// ok
print("myEagle")
let myEagle = Eagle1()
myEagle.fly()
myEagle.layEgg()
myEagle.soar()


// 문제! 펭귄은 못 난다. fly 함수 문제
print("myPenguin")
let myPenguin = Penguin1()
myPenguin.swim()
myPenguin.fly() // -> x 펭귄은 못 날아

//
print("museum")
let museum = FlyingMuseum1()
museum.flyingDemo(flyingObject: myEagle)

// Airplane은 bird가 아님
let myPlane = Airplane1()
// museum.flyingDemo(flyingObject: myPlane) -> Error(struct라서 상속 못 받음)
