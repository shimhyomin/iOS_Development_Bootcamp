
// nil
var hardness : String? //? <- optional

//
var player1Username: String? = nil

player1Username = "jack"

var unwrappedP1Username = player1Username   // unwrappedP1Username도 optional

player1Username = nil

// Error
//print(player1Username!)
if player1Username != nil{
    print(player1Username!)
}
