## For-In Loops
> 규칙!!
- for-in 반복문은 지정된 범위 만큼 반복하거나 컬렉션을 열거할 수 있다.
- for-in 반복문은 얼마든지 중첩해서 쓸 수 있다.


> Syntax
```swift
for loopConstant in Range {
   statements
}
```
 
```swift 
for _ in 1...5 {
    print("Hello")
}

let power = 10
var result = 1

for _ in 1...power{
    result *= 2
}
result

// stride(from: 초기값, to: ..<값, by: 배수)
for num in stride(from: 0, to: 10, by: 3) {
    print(num)
}
```

> Syntax
```swift
for loopConstant in Collection {
   statements
}
```

```swift
// 컬렉션 타입 꺼내기
let list = ["Apple", "Banana", "Orange"]
for fruit in list {
    print(fruit)
}

// 구구단
for i in 2...9{
    for j in 1...9{
        print("\(i) * \(j) = \(i*j)")
    }
}
```

## While Loop
> 규칙!!
 while문에서 기억해야할 것
 1. 조건을 먼저 판단해야한다면 while문
 2. 코드를 먼저 실행해야한다면 repeat-while문
 3. 반복문이 무한루프에 빠지지 않도록 condition이 특정 시점에 false가 되는지 확인해야됨!!!!!
 
### while
> Syntax
```swift
while condition {
   statements
}
```

```swift
// condition = Boolean표현식

var num = 1
var sum = 0

while num <= 100 {
    sum += num
    num += 1
}
sum		// 5050
```

### repeat-while
> Syntax
repeat-while = 코드를 먼저 실행 후 조건 판별
```swift
repeat {
   statements
} while condition
```

```swift
// while 문
var num = 100         // 1번
while num < 100{    // 2번
    num += 1        // 3번
}
num                 // 4번	100

// 진행 순서

// repeat-while
num = 100
repeat {
    num += 1
}while num < 100
num		// 101

// repeat-while문은 코드를 먼저 실행하기 때문에 1더해져서 나와서 101이 됨
```
