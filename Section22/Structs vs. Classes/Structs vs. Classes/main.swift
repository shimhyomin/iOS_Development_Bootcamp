//
//  main.swift
//  Structs vs. Classes
//
//  Created by shm on 2021/09/09.
//

import Foundation

// Struct : Value vs. Class : Reference
// 복사한 후 property를 변경했을 때
var hero = Classhero(name: "Iron Man", universe: "Marvel")
var anotherHero = hero

anotherHero.name = "The Hulk"
print("hero name: \(anotherHero.name)")
print("another hero name: \(hero.name)")


// mutable problem
let hero2 = Classhero(name: "A", universe: "AA")
hero2.name = "B"

let hero3 = Structhero(name: "ABC", universe: "AA")
//hero3.name = "B" -> error
//hero3.reverseName()
