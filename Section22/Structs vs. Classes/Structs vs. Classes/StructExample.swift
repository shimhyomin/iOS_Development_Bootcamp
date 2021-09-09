//
//  StructExample.swift
//  Structs vs. Classes
//
//  Created by shm on 2021/09/09.
//

import Foundation

struct Structhero {
    var name: String
    var universe: String
    
    mutating func reverseName() {
        self.name = String(self.name.reversed())
    }
}

let structehero = Structhero(name: "Superman", universe: "dd")
