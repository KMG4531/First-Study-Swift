## Defining Functions
```swift
// EX
func name(parameters) -> ReturnType {
	Statements
}
```swift
func sayHello() {
	print("Hello, Swift")
}

sayhello()		// 함수 호출
```


## Return Values
> func name(parameters) -> ReturnType {
	statements
    return expression
}

```swift
func add() -> Int {
    return 1 + 2
}

let r = add()
r

if add() == 3 {
    print("three")
} else {
    print("not three")
}

func doSomething() {
    let rnd = Int.random(in: 1...10)
    
    if rnd % 2 == 1 {
        return
    }
    print(rnd)
}
```

## Parameters
> func name(parameters) -> ReturnType {
	statements
}
> (name: Type, name: Type)

```swift
func add(n: Int, m: Int) -> Int{
    return n + m
}

add(n: 5, m: 7)			// 12
```

### Calling Functions
> functionName(paramName: expr)
```swift
add(n: 12, m: 34)		// 46
```
### Default Value
> (name: Type = Value)
```swift
func sayHello(to: String = "Stranger") {
    print("Hello, \(to)")			
}

sayHello(to: "Swift")			// Hello, Swift

sayHello()  // 값을 사용하지 않으면 기본 값 출력 // Hello, Stranger
```

## Argument Label
> Syntax
(name: Tyme) -> (label name: Type)

```swift
func sayHello(to name: String) {
    print("Hello, \(name)")
}

sayHello(to: "Mingu")

// 함수 바디에서는 항상 파라미터로 호출, 밖에서는 아그먼트 레이블로 호출

func sayHello(_ name: String) {
    print("Hello, \(name)")
}

sayHello("Swift")
```

## In-Out Parameters
> Syntax
(name: inout Type)
functionName(argLabel: &expr)

```swift
var num1 = 12
var num2 = 34

func swapNumber(_ a: inout Int, with b: inout Int) {
    let tmp = a
    a = b
    b = tmp
}

num1
num2

swapNumber(&num1, with: &num2)

num1
num2
```

> 자주하는 실수

 상수라 변경 불가능
let a = 12
let b = 34
swapNumber(&a, with: &b)

 immutable = 바꿀 수 없음, mutable = 바꿀 수 있음

직접적으로 값을 바꿀 수 없음
swapNumber(&12, with: &34)


 가변 파라미터를 입출력	파라미터로 선언
func sum(of nums: inout Int...) {   // 오류

}
 -> 입출력 파라미터는 가변 파라미터로 사용 불가

## Implicit Return
> func name(parameters) -> ReturnType {
	statements
    return expression
}

return 생략

> func name(parameters) -> ReturnType {
	single_expression
}

```swift
// return 생략 no
func add(a: Int, b: Int) -> Int {
   return a + b
}

// 생략 on
func add1(a: Int, b: Int) -> Int {
    a + b
}

add(a: 1, b: 2)				// 3
add1(a: 5, b: 6)			// 11
```

## @discardableResult
```swift
func doSomething() {
   print("Something secret")
}

@discardableResult  // return하는 코드가 경고일 때 경고무시 명령어(노랑색 삼각형 모양)
func saySomething() -> String {
   return "Hello"
}

class ViewController: UIViewController {
      
   override func viewDidLoad() {
      super.viewDidLoad()
      
      doSomething()

      saySomething()
   }
}

// 함수 선언을 수정할 수 없는 경우에는 wildcard 패턴을 사용
// _ = saySomething
```




