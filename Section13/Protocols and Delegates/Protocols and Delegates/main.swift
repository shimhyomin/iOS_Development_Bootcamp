
protocol AdvancedLifeSupport {
    // 이 프로토콜이 CPR을 할 필요 x
    func performCPR()
}

class EmergencyCallhandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallhandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
}

class Doctor: AdvancedLifeSupport {
    
    init(handler: EmergencyCallhandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does cheast compressions, 30 per seconds.")
    }
    
    func useStethescope() {
        print("Listening for heart sounds.")
    }
}

class Surgen: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the BeeGees.")
    }
}

let emilio = EmergencyCallhandler()
let pete = Paramedic(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()

let angela = Surgen(handler: emilio)
emilio.medicalEmergency()
