
import UIKit

// closure를 사용하기 전
func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

func add (no1: Int, no2: Int) -> Int {
    return no1 + no2
}

func multiply (no1: Int, no2: Int) -> Int {
    return no1 * no2
}

calculator(n1: 2, n2: 7, operation: add)

// closure 사용
// { (firstParameter: Int, secondParameter: Int) -> Int in
//       return firstParameter + secondParameter
// }

calculator(n1: 4, n2: 1, operation: { (no1: Int, no2: Int) -> Int in
    return no1 -  no2
})

// ==
calculator(n1: 4, n2: 1, operation: { (no1, no2) in no1 -  no2})

// ==
let result = calculator(n1: 4, n2: 1, operation: {$0 - $1})
print(result)

// ==
let result2 = calculator(n1: 4, n2: 1) {$0 - $1}
print(result2)

/////////////////////////////////////////////////////////////
// map
let array = [6,7,2,9,1,10]

// closure 사용하기 전
func addOne (n1: Int) -> Int {
    return n1 + 1
}

array.map(addOne)

// closure 사용
print(array.map({$0 + 1}))

let newArray = array.map{"\($0)"}
