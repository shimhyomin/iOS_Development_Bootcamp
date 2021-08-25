Section07: Using and Understanding Apple Documentation
====
What I’ll Learn
---
#### 🏗 Setup the Skeleton Project.
#### 📖 Figure out how to play sound using Apple Documentation and StackOverflow.
#### 🧮 Learn about Swift Functions.
#### 🎏 Linking multiple elements to one IBAction.
#### 📥 Creating functions with inputs.
#### 🎼 Play different sounds for different buttons.

## 🏗 Setup the Skeleton Project.
##### 해당 Skeleton Project를 clone 해온다.


## 📖 Figure out how to play sound using Apple Documentation and StackOverflow.
##### https://developer.apple.com/documentation/ 애플 공식 문서
##### https://stackoverflow.com/ StackOverflow
##### AVAudioPlayer를 이용하여 button을 누르면 소리가 나오도록 한다.
##### AVAudioPlayer를 사용하기 위해 google에 “swift AVAudioPlayer stack overflow”라고 검색한다. 다른 사람이 AVAudioPlayer에 대해 질문한 내용이 나오고 해당 링크에 들어가면 답변 또한 볼 수 있다. 적절한 답변을 찾아 상황에 맞게 custom해서 코드를 사용하면 된다.


## 🧮 Learn about Swift Functions.
##### Function은 (Keyword) (Function name) (input) { (Function 내용) } 으로 구성된다.
##### input이 있는 함수의 경우
```
func myFunction(parameter: Type) { }
```
##### 위와 같이 정의하고
##### myFunction(parameter: value)
##### 호출할 때는 위와 같이 parameter 이름을 적고 : 뒤에 넘겨줄 value를 적는다.
```
myFunction(parameterName: valueName)
```


## 🎏 Linking multiple elements to one IBAction.
##### 한 IBAction에 여러 element들을 연결하고 싶으면 IBAction 옆의 동그라미를 클릭한 채로 연결하고 싶은 element로 가져다 놓으면 된다.


## 📥 Creating functions with inputs.
##### @IBAction 함수를 보면 parameter 값이 존재한다. UIButton type인 sender를 parameter로 가져온다.
##### 이 sender의 currentTitle을 parameter로 하는 함수, playSound를 만든다.
```
Func playSound(soundName: String) {}
```


## 🎼 Play different sounds for different buttons.
##### playSound 함수는 soundName이라는 parameter 값을 가져오고 keyPressed 함수 안에서 playSound를 호출하는데, 이때 sender.currentTitle을 parameter로 보낸다.
##### 우리는 이 sender.currentTitle을 이용하여 AVAudioPlayer의 parameter값을 달리 하여 다른 버튼을 누를 때마다 다른 소리가 나도록 한다.
```
let url = Bundle.main.url(forResource: soundName, withExtension: “wav”)
play = try! AVAudioPlayer(contentsOf: url!)
player.play()
```
