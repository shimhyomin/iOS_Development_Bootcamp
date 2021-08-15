
var myOptional: String?

myOptional = "hyomin"


// Optional를 쓰는 방법
// 1. Force Unwrapping
// optional!
// let text: String = myOptional   -> Error
let text: String = myOptional!

// 2. Check for nil value
myOptional = nil
if myOptional != nil {
    let text: String = myOptional!
}else {
    print("myOptional was found to be nil.")
}

// 3. Optional Binding
if let safeOptional = myOptional {
    let text2 = safeOptional
    print(text2)
}

// 4. Nil Coalescing Operator
let text3: String = myOptional ?? "I am the default value"
print(text3)

// 5. Optional Chaning
struct MyOptional {
    var property = 123
    func method() {
        print("I am the struct's method.")
    }
}

let myOptionalStruct: MyOptional?
myOptionalStruct = nil
print(myOptionalStruct?.property)
myOptionalStruct?.method()
