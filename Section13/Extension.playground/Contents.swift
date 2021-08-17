
// Extension
// extension SomeType {
//  // Add new Functionality
// }

import UIKit

extension Double {
    func round(to places: Int) -> Double {
        let precisionNumber = pow(10, Double(places))
        var n = self
        n = n * precisionNumber
        n.round()
        n = n / precisionNumber
        return n
    }
}

var myDouble = 3.14159

let myRoundedDouble = String(format: "%.1f", myDouble)
print(myRoundedDouble)

myDouble.round()

var a = 24.1454
a.round(to: 3)

// Extension UIButton
let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red

button.layer.cornerRadius = 25
button.clipsToBounds = true

extension UIButton {
    func makeCircular() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}

let button1 = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button1.backgroundColor = .red
button1.makeCircular()

// Protocol Extension
// extension SOmeProtocol {
//  // Define default behaviour
// }
// Protocol Demo Project에서 실습!
