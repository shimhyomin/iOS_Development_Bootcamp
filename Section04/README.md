Section04: Swift Programming Basics - Collections, Constants & Variables
=========================================================================
What I’ll Learn
-----------
#### 👯‍♀️ Clone an existing Xcode project from GitHub.
#### 🎨 Design the user interface.
#### 💻 Changing UI Elements programmatically.
#### 👋 Detect user interaction and respond to it.
#### 💼 Learn to user Swift Variables and Arrays to store data.
#### 🎲 Learn about randomization in Swift.
***
## 👯‍♀️ Clone an existing Xcode project from GitHub.
##### Xcode를 열고 Clone an existing project를 선택한다.
![image](https://user-images.githubusercontent.com/87226868/130736692-3b420739-3a0a-4d81-ba5e-91cfba74281a.png)
##### clone할 URL을 입력한다.
![image](https://user-images.githubusercontent.com/87226868/130736711-b87f08ca-975b-4dfd-8587-c0bfe0d455af.png)
##### 위 방법은 Xcode로 clone해오는 방법이다.
##### 나는 터미널에서 git clone 명령어를 입력하여 clone하는 방법을 선택하였다.

## 🎨 Design the user interface.
##### User interface는 Main.Storyboard에서 구성한다.

## 💻 Changing UI Elements programmatically.
##### 코드를 통해서 UI Element를 바꿔보도록 하겠다.
##### ViewController.swift에서 Main.Storyboard에서 구성한 화면을 동작시킬 수 있다.
##### Adjust Editor Options > Assistant를 선택하면 Main.Storyboard와 ViewController.swift를 한꺼번에 볼 수 있다.
##### ViewController.swift에 Main.Storyboard에 있는 구성요소를 연결하기 위해서는 control 버튼을 누르고 연결하고 싶은 Element를 클릭한 채로 ViewController.swift 코드 위에 놓으면 된다.
![image](https://user-images.githubusercontent.com/87226868/130736831-7b87e25c-cb84-4a3d-bb55-6769699c4a2b.png)
##### Dice의 이미지를 코드를 변환하고 싶기 때문에 우선 Dice Image Element를 ViewController.swift와 연결한다.
##### 해당 View가 실행되면 viewDidLoad()가 동작하기 때문에 viewDidLoad() 안에 코드를 작성하도록 한다.
##### (ImageView의 변수명).image로 해당 ImageView의 이미지 경로를 정할 수 있다.
##### Image Literal을 이용해서 image 경로를 지정해준다.
![image](https://user-images.githubusercontent.com/87226868/130736852-4c69297f-010f-4018-979b-377e72084fe1.png)
##### Image Literal을 치면 사진 모양 그림이 뜨는데 그림을 클릭하면 asset 폴더의 이미지들이 뜬다. 원하는 이미지를 선택하면 된다.
![image](https://user-images.githubusercontent.com/87226868/130736878-25538988-1794-4d34-9c28-91179743e671.png)

## 👋 Detect user interaction and respond to it.
##### 다음으로 user가 button을 클릭했을 때 Dice의 image가 바뀌도록 한다.
##### Control 버튼을 누르고 button을 클릭한 채로 ViewController.swift에 놓아준다.
##### @IBAction 함수가 생성된다. button을 클릭할 때 동작하는 함수이다.

## 💼 Learn to user Swift Variables and Arrays to store data.
##### swift에서 let과 var 키워드를 사용한다.
##### swfit에서 let은 상수로 한번 정의하면 변하지 않는 값이다.
##### swift에서 var는 변수로 변할 수 있는 값이다.
##### Array는 배열로 여러 값을 저장할 수 있다. array 또한 let 또는 var로 선언할 수 있다.

## 🎲 Learn about randomization in Swift.
##### 마지막으로 user가 button을 클릭했을 때, dice의 이미지가 랜덤하게 변하도록 한다.
##### 우선 1부터 6까지의 주사위 눈이 그려진 dice image resource를 array에 저장한다.
##### swfit에서 제공하는 random 함수를 이용하여 Array의 index를 랜덤하게 하여 접근하도록 한다.
  Int.random(in: 0…5)
##### 위 코드는 0부터 5까지의 정수값을 랜덤하게 제공한다.
