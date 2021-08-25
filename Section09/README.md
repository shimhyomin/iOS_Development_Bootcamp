Section09: iOS App Design Patterns and Code Structuring
===
What I’ll Learn
---
#### 🖲 Show quiz questions.
#### ✅ Check the answers.
#### 🏛 Learn about Swift Structures.
#### 🧬 Learn about design patterns and use the Model View Controller pattern.
#### 📤 Learn about Swift Functions that can have outputs.
#### 🤔 Understand immutability.
***

## 🖲 Show quiz questions.
##### Label에서 question을 보여준다. ViewController.swift에서 코드를 통해 label의 text를 지정하도록 한다.


## ✅ Check the answers.
###### ViewController.swift에서 @IBAction 함수와 true button, false button 두 Element를 연결한다. 사용자가 true 혹은 false button을 눌렀을 때 누른 것이 정답인지 아닌지 확인한다.


## 🏛 Learn about Swift Structures.
##### structure이란? structure은 여러 type의 변수를 담을 수 있는 컨테이너로, struct는 property와 method로 이루어진다.
```
// 예제
struct Town {
	// property
	var name: String	// String
	var citizens: [String]	// Array
	var resources: [String: Int]	// Dictionary

	// Initialize
	init(name: String, citizens; [String], resources: [String: Int]) {
		self.name = name
		self.citizens = citizens
		self.resources = resources
	}

	// method
	func fortify() {
		print(“Defenses increased!”)
	}
}
```
##### ...
##### question과 answer를 property로 갖는 Question structure를 만든다.


## 🧬 Learn about design patterns and use the Model View Controller pattern.
##### MVC pattern은 대표적인 디자인 패턴 중 하나로, Model - View - Controller의 줄임말이다.
* Model이란 데이터와 데이터에 관한 로직을 담당
* View란 사용자에게 보여지는 화면을 담당
* Controller란 Model과 View를 연결하는 역할
##### MVC pattern에서는 Model과 View는 절대 서로에게 접근하지 않는다.
##### ...
##### 이제 quiz app에서 MVC pattern을 적용해보도록 한다.
##### 우선 위에서 만든 Question structure은 Model에 해당된다.
##### Question의 개수가 많으므로 QuizBrain이라는 Model structure을 만든다. QuizBrain은 Question array를 property로 갖는다.
##### 이제 ViewController.swift에서 QuizBrain instance를 생성하고 QuizBrain instance에 접근하여 필요한 question 값과 answer 값을 가져와 View에서 보여주면 된다.


## 📤 Learn about Swift Functions that can have outputs.
```
funcKeyword funcName(inputName: inputType) -> returnType {
	// todo
}
//예제
func greeting(name: String) -> Bool { 	if name == “Jack” {
		return true
	} else {
		return false
	}
}
```
##### 위 greeting 함수는 Bool type을 return하는데 input으로 들어온 name 변수가 “Jack” 이면 true, 아니면 false를 반환한다.
##### ...
##### QuizBrain structure에 checkAnswer method를 만들도록한다. checkAnswer는 input으로 들어온 answer 값과 quiz의 해당 question의 answer과 일치하면 true를, 불일치하면 false를 반환한다.


## 🤔 Understand immutability.
##### swift에서 structure 내부의 method에서 property를 변경하려면 method에 mutating keyword를 붙여야한다.
```
//예제
mutating func checkAnswer(_ userAnser: String) -> Bool {
	if userAnser == quiz[questionNumber].answer { 
    score += 1
		return true
	} else {	
    return false
	}
}
```
