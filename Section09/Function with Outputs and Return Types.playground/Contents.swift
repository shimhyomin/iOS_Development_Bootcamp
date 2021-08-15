
func greeting1() {
    print("Hello")
}
greeting1()

func greeting2(name: String){
    print("Hello \(name)")
}
greeting2(name: "Hyomin")

func greeting3(name: String) -> Bool {
    if name == "Hyomin" || name == "Jack"{
        return true
    }else {
        return false
    }
}
var doorShouldOpen = greeting3(name: "someone")
print(doorShouldOpen)
