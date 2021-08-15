
let skeleton1 = Enemy(health: 100, attackStrength: 10)
//print(skeleton.health)
//skeleton.move()
//skeleton.attack()
//
//let skeleton2 = Enemy()
//let skeleton3 = Enemy()

//let dragon = Dragon()
//dragon.wingSpan = 5
//dragon.health = 200
//dragon.attackStrength = 115
//dragon.talk(speech: "hi i'm dragon")
//dragon.move()
//dragon.attack()

// class vs struct
let skeleton2 = skeleton1
skeleton1.takeDamage(amount: 10)
print(skeleton2.health)
skeleton2.takeDamage(amount: 20)
print(skeleton1.health)
print(skeleton2.health)
// Enemy가 class이면 skeleton1이 데미지 -> skeleton2도 똑같이 데미지
// Enemy가 struct이면 skeleton1이 데미지 -> skeleton2은 데미지 x

// struct는 복사
