
// Immutability 불변성

// let vs var
// let
// var

struct Town {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(citizens: [String], name: String, resources: [String:Int]) {
        self.citizens = citizens
        self.name = name.uppercased()
        self.resources = resources
    }
    
    mutating func harvesRice() {
        self.resources["Rice"] = 100
    }
}

var myTown = Town(citizens: ["A", "B"], name: "Land", resources: ["Wool": 75])
myTown.citizens.append("C")
myTown.harvesRice()
