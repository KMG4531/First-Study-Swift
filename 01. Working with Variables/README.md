## Variables 변수
> var variableName = initialValue

변수는 언제든지 값을 변경할 수 있다.

```swift
var name : String = "강민구"
var year : Int = 2001
var valid = true 

// 값 변경

name = "Mingu"
year = "2001"
```
## Constants 상수
> let constantName = initialValue

상수는 값을 변경할 수 없다.
```swift
let name = "Mingu"	// String
let year = 2001		// Int

// 값 변경
name = "민구"		// 오류
```

## 이름 정의 규칙

### UpperCamelCase
항상 첫 번째 문자가 대문자

- Class
- Structure
- Enumeration
- Extension
- Protocol

### lowerCamelCase
항상 첫 번째 문자가 소문자
- Variable
- Constant
- Function
- Property
- Parameter
