
// 1. Function
// (keyword) (name) (input) (함수내용)
func greeting() {
    print("Hello")
}

greeting()


// 2. Scope
func greeting1() {
    let myName = "hyomin"
    print(myName)
}
func greeting2() {
    // print(myName) -> 오류!
}

func greeting3(){
    func greeting4(){}
}

// 3. Input
// func myFunction(parameter: DataType)
var myAge = 24  // option 키 누르고 myAge 클릭하면 dataType 나온다.
var myName = "hyomin"

func greeting5(whoToGreet: String){
    print("Hello \(whoToGreet)")
}

greeting5(whoToGreet: "hyomin")
