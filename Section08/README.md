Section08: Intermediate Swift Programming - Control Flow and Optional
===
What I’ll Learn
---
#### 🏗 Setup the Skeleton Project.
#### 🤔 Swift IF/ELSE Statements.
#### 🛤 Swift Switch Statements.
#### 📚 Swift Dictionaries.
#### ⁉️ Swift Optionals.
#### ⏳ Create a UIProgressView to keep track of time.
#### 🐞 How to Debug Your App.
***

## 🏗 Setup the Skeleton Project.
##### Egg Timer app Skeleton Project를 clone 해온다.


## 🤔 Swift IF/ELSE Statements.
##### Egg Timer app에서 if 문을 이용하여 Hard button, Medium button, Soft button을 눌렀을 때 각각 30, 20, 10을 출력하도록 한다.
* IF ELSE 문
```
if 조건식 {
  // todo
} else {
  // todo
}

// 예제
if loveScore == 100 {
  print("you love each other like Kanye loves Kanye.”)
} else { 
  print("You'll be forever alone”)
}
```

* - ELSE IF 문
```
if 조건식 {
  // todo
} else if 조건식 {
  // todo
} else {
  // todo
}

// 예제
if loveScore > 80 {
    print("You love each other like kanye loves kanye”)
} else if loveScore > 40 {
    print("You go together like Coke and Mentos”)
} else {
    print("You'll be forever alone”)
}
```


## 🛤 Swift Switch Statements.
##### Egg Timer app에서 if 문으로 작성한 코드를 switch 문으로 교체한다.
```
switch 특정변수 {
  case 조건1: { // todo }
  case 조건2: { // todo }
  ...
  default: { // todo }
}

// 예제
switch loveScore {
case 81...100:
    print("You love each other like kanye loves kanye")
case 41..<81:
    print("You go together like Coke and Mentos")
case ...40:
    print("You'll be forever alone")
default:
    print("Error lovescore is out of range")
}

// swift에서 Range
a…b: Closed Range
a..<b: Half Open Range
…b: One Side Range
```


## 📚 Swift Dictionaries.
##### Egg Timer app에서 button의 title을 key로 하고, 해당 분을 value로 하는 dictionary를 선언 정의하고 hardness button을 클릭했을 때 해당 hardness에 해당하는 value 값을 출력하도록 한다.

```
var dictName : [key Type : value Type] = [key : value, key : value]

//예제
var dict : [String : Int] = ["Astudent" : 12937, "Bstudent" : 183784]

//접근하는 법
dict[“Astudent”] // 12937
```

## ⁉️ Swift Optionals.
##### swift의 optional은 변수가 nil 일 수 있다는 것을 표현하는 것으로 변수를 선언할 때 ? keyword를 사용하여 나타낸다.

```
//예제
var hardness: String? // default로 nil 이 된다.

var player1: String?
player1 = “jack”
var unWrappedPlayer1 = player1 // unWrappedPlayer1도 optional이 된다.
```

## ⏳ Create a UIProgressView to keep track of time.
##### swift에서 제공하는 Timer 함수를 사용하여 hardness에 따라 해당 시간을 세도록 한다.
##### Timer 함수는 StackOverflow에 검색하여 찾아보고 우리의 코드에 맞게 custom하여 사용한다.

```
// Countdown Timer
timer.invalidate() // timer 초기화
totalTime = eggTimes[hardness]!
secondsPassed = 0
timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)

@objc func updateTimer() {
if secondsPassed < totalTime { // progress bar update
// secondsPassed update
} else {
timer.invalidate()
}
```

## 🐞 How to Debug Your App.

