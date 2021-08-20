
import Foundation

struct MyStructure {
    let instanceProperty = "ABC"
    static let typeProperty = "123"
    
    func instanceMethod() {
        
    }
    
    static func typeMethod() {
        
    }
}

let myStruct = MyStructure()
print(myStruct.instanceProperty)
print(MyStructure.typeProperty)

myStruct.instanceMethod()
MyStructure.typeMethod()
