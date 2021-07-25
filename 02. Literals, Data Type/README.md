## Integer Types
> Integer Types
Int8
Int16
Int32
Int64

### Signed vs Unsignes
> Int8 : UInt8
Int16 : UnInt16
Int32 : UInt32
Int64 : UInt64

Signed = 음수와 양수를 저장할 수 있음
Unsignes = 0포함 양수만 저장가능

## Boolean
참과 거짓을 정의함
Swift의 Bool타입에서는 0과 1을 사용할 수 없다.
true와 false만 사용 가능
```swift
let isValid: Bool = true
let str = " "

str.isEmpty		// false
```

## String

```swift
let str = "안녕하세요"
type(of: str)		// String
```

## Character

```swift
let ch: Character = "1"
type(of: ch)		// Character

let doubleCh: Character = "A"

let char = "호"
type(of: char)		// String
// 누가봐도 char은 Character 타입인데 String으로 뜨는 이유는
// 타입을 정의해주지 않으면 String 타입으로 값을 입력받기 때문이다.
// Character을 사용할 때는 반드시 타입을 명시해줘야 한다.
```

## Float, Double
```swift
Float = 32bit
Double = 64bit

let someFloat = Float = 3.14
let someDouble = Double = 3.141592

// 타입을 명시하지 않고 Float타입으로 사용해보자
let soFloat = 0.17
type(of: soFloat)		// Double

// 위의 String과 마찬가지로 타입을 명시해주지 않고 선언을 하게 되면 
// 소수는 Double 타입으로 값을 입력받는다.
```

## Type Safety

```swift
let rate = 1.94
let amt = 10_000_000		// 10000000
let result = rate * Double(amt)	//19400000

Int(rate * Double(amt))
Int(rate) * amt

print(result)
```

## Type Conversion
```swift
let a = 123
let b = 4.56

Double(a) + b   // 123.0 + 4.56
a + Int(b)      // 123 + 4

let c = Int8(a)

let str = "number"
let num = Int(str)      // nil
```

## Type Alias
> typealias NewName = TypeName
별명이라고 생각하면 됨
```swift
typealias Coordinate = Double

let lat: Coordinate = 12.34
let lon: Coordinate = 56.78
```
