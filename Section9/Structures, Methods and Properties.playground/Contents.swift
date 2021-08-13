
// structKeyword structName{}
struct Town {
    // Property
    var name: String // String
    var citizens: [String] // Array
    var resources: [String: Int]   // Dic
    
    // Initialize
    init(name: String, citizens: [String], resources: [String: Int]){
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    // Method
    func fortify() {
        print("Defences increased!")
    }
}
    
var anotherTown = Town(name: "Nameless Island", citizens: ["Acitizen"], resources: ["Coconuts": 100])
anotherTown.citizens.append("Bcitizen")
print(anotherTown.citizens)

var ghostTown = Town(name: "Ghosty McGhostface", citizens: [], resources: ["Tumbleweed": 1])
ghostTown.fortify()

ghostTown = anotherTown
print(ghostTown.name)
anotherTown.name = "change"
print(ghostTown.name)
