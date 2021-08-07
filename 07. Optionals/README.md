## Optionals
nil = 값이 없다.
```swift
let optionalNum: Int? = nil
```

### Optional Type
    TypeName       ||     TypeName?
Non-Optional Type      Optional Type

```swift
let str: String = "Swift"			// Non-Optional Type
let optionalStr: String? = nil		// Optional Type(nil)

let a: Int? = nil

let b = a
b		// nil
```

### Unwrapping
```swift
var num: Int? = nil
print(num)			// nil

num = 123			// 123
print(num)			// Optional(123)

let n = 123			// 123
print(n)			// 123
```

### Forced Unwrapping
> 강제적 추출 옵셔널
OptionalExpression!

```swift
print(num)			// Optional(123)

print(num!)			// 123

num = nil
// print(num!)  -오류 옵셔널 하는 도중 nil값이 발견되면 오류

if num != nil{
    print(num!)
}

num = 123
let before = num
let after = num!
```

## Optional Binding
> Syntax
- if let name: type = OptionalExpression {
	statements
}
- while let name: type = OptionalExpression {
	statements
}
- guard let name: type = OptionalExpression else {
	statements
}

```swift
var num: Int? = nil


if num != nil {
    print(num!)
} else {
    print("empty")
}

if let num = num {
    print(num)
} else {
    print("empty")
}


var str: String? = "str"
guard let str = str else {
    fatalError()
}
str

// guard에서는 이름을 else블럭 다음(코드가 끝난 뒤) 사용가능하다

num = 123
if var num = num {
    num = 456
    print(num)
}

let a: Int? = 12
let b: String? = "str"

if let num = a, let str = b, str.count > 5 {
    
}

// if 블럭은 바인딩이 끝나고 실행 됨
```

## Implicitly Unwrapped Optionals
> Type!
IUO - 암시적 추출 옵셔널

```swift
let num: Int! = 12
let a = num
a					// 12

let b: Int = num
b					// 12
```

> 기억하기
- 문법적으로만 이해
- IUO는 자료형 이름 뒤에 !가 붙어있는 형태
- IUO는 처리할 자료형, Non 옵셔널 타입을 직접 지정하면 Unwrapping된다.


## Nil-Coalescing Operator
```swift
var msg = ""
var input: String? = "Swift"

if let inputName = input {          // 옵셔널 바인딩 성공
    msg = "Hello, " + inputName
} else {
    msg = "Hello, Stranger"
}

print(msg)

var str = "Hello, " + (input != nil ? input! : "Stranger")  // 조건 연산자
print(str)
```

> Syntax
a ?? b
OptionalExpression ?? Expression
이항연산자 -> 피연산자가 2개
왼쪽 옵셔널표현식 ?? 오른쪽 Non옵셔널 표현식


```swift
input = nil
str = "Hello, " + (input ?? "Stranger")
print(str)			// Hello, Stranger
```
- 왼쪽에 있는 피연산자에 값이 저장되어 있는지 확인 후 값이 있으면 Unwrapping 한 다음에 연산한 후 리턴한다
 -> Hello, Swift
- 값이 저장되어 있지 않다면 Stranger 문자열이 연산되어서 리턴한다.
 -> Hello, Stranger

왼쪽 피연산자 값이 저장되어 있다면 출력하고, 왼쪽 값이 저장되어 있지 않다면 오른쪽 값 출력












