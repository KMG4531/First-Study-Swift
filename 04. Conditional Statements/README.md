## if Statement
### if

> syntax
if condition {
   statements
}

```swift
let id = "root3"
let password = "1234qwer"

if id == "root" {
    print("valid id")
}

if password == "1234qwer" {
    print("valid password")
}

if id == "root" && password == "1234qwer" {
    print("go to admin page")
}

print("incorrect value")

if id != "root" || password != "1234qwer"{
    print("inncorrect value")
}
```

### if-else
> Syntax
if condition {
   statements
} else {
   statements
}

```swift
if id == "root" && password == "1234qwer" {
    print("go to admin page")
} else {
    print("inncorrect value")
}
```

### if-else if-else
> Syntax
if condition {
   statements
} else if condition {
   statements
} else {
   statements
}

```swift
let num = 5

if num >= 0{
    print("positive number or zero")
    
    if num % 2 == 0 {
        print("positive even number")
    } else {
        print("positive eodden number")
    }
}  else {
    print("negative number")
}

if num > 100 {
    print("positive number over 100")
} else if num > 10 {
    print("positive number over 10")
} else if num > 0 {
    print("positive number")
}
```


## switch
> Syntax
switch valueExpression {
case pattern:
    statements
case pattern, pattern:
    statements
default:
    statements
}

```swift
let num = 8

switch num {
case 1:
   print("one")
case 2, 3:
   print("two or three")
default:
   print("others")
}
```

> Syntax
switch valueExpression {
case pattern where condition:
   statements
default:
   statements
}

```swfit
// 둘 n 만족하면 where 다음도 만족 시 print(n)
switch num {
case let n where n <= 10:
   print(n)
default:
   print("others")
}
```

### lnterval Matching
```swift
let temperature = 32

switch temperature {
case ..<10:
   print("Cold")
case 11...20:
   print("Cool")
case 21...27:
   print("Warm")
case 28... :
   print("Hot")
default:
   break
}
```

### Fall Through
```swift
let num = 2

switch num {
case 1:
   print("one")
case 2:
   print("two")
   fallthrough
case 3:
   print("three")
default:
   break
}

// 출력 two, three

let attempts = 10

switch attempts {
case ..<10:
   print("warning")
case 10:
   print("warning")
   fallthrough
default:
   print("reset")
}

// 출력 warning, reset
```

## guard
> 규칙!!
 - 조건이 하나이거나 조건 자체가 단순하면 if문 사용
 바인딩한 상수를 다른 값을 처리하는 임시값으로 사용하면 if문 사용
 - 복잡한 조건을 여러개 구현하거나 바인딩한 상수를 동일한 스코프에서 계속해서 사용해야한다면 guard문 사용
 - if문으로 작성한 코드가 지나치게 복잡해지거나 여러단계로 중첩되어 가독성이 떨어지면 guard문 사용

> Syntax
guard condition else {
   statements
}
guard optionalBinding else {
   statements
}


```swift
func divide(base: Int){
    guard base < 100 else {
        print("100보다 큽니다.")
        return
    }
    guard base < 90 else {
        print("90보다 큽니다.")
        return
    }
    guard base < 80 else {
        print("80보다 큽니다.")
        return
    }
    print("아무것도 아닙니다.")

}
divide(base: 89)

// 출력 "80보다 큽니다."
```
