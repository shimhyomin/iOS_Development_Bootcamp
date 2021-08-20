import Foundation

// For In Loops
let fruits = ["Apple", "Pear", "Orange"]    // array
let contacts = ["Adam": 123456789, "James": 987654321, "Amy": 912345678]    // dictionary
let word = "supercalifrgilisticexpialidocious"  // String
let halfOpenRange = 1..<5
let closeRange = 1...5

for fruit in fruits {
    print(fruit)
}
for person in contacts {
    print(person.key)
    //print(person)
}
for letter in word {
    print(letter)
}
for number in halfOpenRange {
    print(number)
}
for _ in closeRange {
    print("hi")
}


// While Loops
var now = Date().timeIntervalSince1970
let oneSecondFromNow = now + 1
while now < oneSecondFromNow {
    now = Date().timeIntervalSince1970
    print("Waiting...")
}
