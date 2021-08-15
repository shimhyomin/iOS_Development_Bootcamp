
// IF ELSE
func loveCalculator() -> Int {
    return Int.random(in: 0...100)
}

let loveScore = loveCalculator()
print(loveScore)

if loveScore == 100 {
    print("you love each other like Kanye loves Kanye.")
}else {
    print("You'll be forever alone")
}

// Else IF
if loveScore > 80 {
    print("You love each other like kanye loves kanye")
} else if loveScore > 40 {
    print("You go together like Coke and Mentos")
} else {
    print("You'll be forever alone")
}

// Switch
switch loveScore {
case 81...100:
    print("You love each other like kanye loves kanye")
case 41..<81:
    print("You go together like Coke and Mentos")
case ...40:
    print("You'll be forever alone")
default:
    print("Error lovescore is out of range")
}

// Range
// a...b : Closed Range
// a..<b : Half Open Range
// ...b : One Side Range
