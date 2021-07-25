연산자는 우선 순위를 가진다.

## Arithmetic Operators
```swift
let a = 12
let b = 34
```

### Unary Plus Operator
> Example
+a

```swift
+a		// 12
+b 		// 34
```

### Addition Operator
> Example
a + b

```swift
a + b		// 46
```

### Unary Minus Operator
> Example
-a

```swift
-a		// -12
-b		// -34
```

### Subtraction Operator
> Example
a - b

```swift
a - b		// -32
```

### Multiplication Operator
> Example
a * b

```swift
a * b		// 408
```

### Division Operator
> Example
a / b

```swift
a / b		// 0
b / a		// 2

let c = Double(a)		// 12
let d = Double(b)		// 34

c / d		// 0.3529...
d / c		// 2.8333...
```

### Remainder Operator (Modulo Operator)
나머지 값
> Example
a % b

```swift
a % b
// c % d
c.truncatingRemainder(dividingBy: d)
```

### Overflow

```swift
let num: Int = 9 * 9 * 9
```

## Comparison Operatiors
```swift
let a = 12
let b = 34
```

### Equal to Operator
> Example
a == b

```swift
a == b		// false
"Swift" == "Swift"		// ture
```

### Not equal to Operator
> Example
a != b

```swift
a != b		// true
```

### Greater than Operator
> Example
a > b

```swift
a > b		// false
"swift" > "Swift"		// true
```

### Greater than or equal to Operator
> Example
a >= b

```swift
a >= b		// false
7 > 7		// false
7 >= 7		// true
```

### Less than Operator
> Example
a < b

```swift
a < b
```

### Less than or equal to Operator
> Example
a <= b

```swift
a <= b
```

## Logical Operators

### Logical NOT Operators
> Example
!a

```swift
!true		// false
let a = 12
let b = 34

!(a < b)		// false
```

### Logical AND Operators
> Example
a && b

```swift
// 둘 다 조건이 만족할 때
a > 30 && b % 2 == 0		// fasle

true && true		// true
true && false		// false
false && false		// false
```

### Logical OR Operators
```Example
a || b

```swift
// 둘 중 하나의 조건이 만족할 때
a > 30 || b % 2 == 0		// true

true || true		// true
true || false		// true
false || false		// false
```

## Ternary Conditional Operator
> Syntax
condition ? expr1 : expr2
   조건    ?  성립1 :  성립2
조건이 true이면 성립1 호출
false면 성립2 호출
 
```swift
let hour = 12
// expr에 오는 자료형은 같아야함
hour  < 12 ? "am" : "pm"		// "pm"

if hour < 12{
    "am"
} else {
    "pm"		// "pm"
}

// hour < 11 "Good Morning"
// hour < 17 "Good Afternoon"
// "Good Evening"

hour < 11 ? "Good Morning" :
    (hour < 17 ? "Good Afternoon": "Good Evening")		// "Good Afternoon"
```

## Assignment Operator
### Assignment Operator
> Example
a = b

```swift
let a = 12
var b = 34
b = a		// 12
```

## Compound Assignment Operators
### Addition Assignment Operator
> Example
a += b
a = a + b

```swfit
var a = 1
var b = 2
a = a + b		// 3

a = 1
b = 2
a += b			// 3
```

### Subtraction Assignment Operator
> Example
a -= b
a = a - b

```swift
a = 5
b = 3
a = a - b		// 2

a = 5
b = 3
a -= b			// 2
```

### Multiplication Assignment Operator
> Example
a *= b
a = a * b

```swift
a = 5
b = 3
a = a * b		// 15

a = 5
b = 3
a *= b			// 15
```

### Division Assignment Operator
> Example
a / = b
a = a / b

```swift
a = 7
b = 3
a = a/b		// 2

a = 7
b = 3
a /= b		// 2
```

### Modulo Assignment Operator
> Example
a %= b
a = a % b

```swift
a = 7
b = 3
a = a % b

a = 7
b = 3
a %= b
```

## Range Operators

### Closed Range Operator
> Example
a...b
a...
...a

```swift
var sum = 0
for num in 1...10 {
	num
    sum += num
}
sum		// 55

let list = ["A", "B", "C", "D", "E"]
list [2...]		// ["C", "D", "E"]
list[...2]		// ["A", "B", "C"]
```

### Half-Open Range Operator
> Example
a ..< b
..< a

```swift
sum = 0
for num in 1..<10{
    sum += num
}
sum		// 45

list		// ["A", "B", "C", "D", "E"]
list[..<2]		// ["A", "B"]

let range = 0...5
range.contains(7)		// false
range.contains(3)  		// true
```
