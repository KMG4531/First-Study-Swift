## String and Characters   
```swift 
let s = "String"

let c : Character = "C"

let emptyChar: Character = " "

let emptyString = ""
emptyString.count

let emptyString2 = String()
```

### String Types
```swift
// String => Swift String
// NSString = > Foundation String  // 참조

// 두 자료형 호환
// 타입 캐스팅 = as
var nsstr: NSString = "str"
var swiftStr: String = nsstr as String

nsstr = swiftStr as NSString
```

### Mutability
```swift
let immutableStr = "str"
//immutableStr = "new str"

var mutableStr = "str"
mutableStr = "new str"

```

### Unicode
```swift
let str = "Swift String"

str.utf8
str.utf16

var thumUp = "☄️"

thumUp = "\u{1F609}"

//😉
//윙크하는 얼굴
//유니코드: U+1F609, UTF-8: F0 9F 98 89
```

## Multiline String Literal
```swift
// Multiline String Literal = 긴 문자열을 줄바꿈하기 위해 사용 됨
// """
// String
// """
// 항상 첫 문자에 맞춰야한다.
let loremIpsum = "Lorem ipsum dolor sit amet, consecteturadipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."


let multiline = """
        Lorem ipsum dolor sit amet,
        consecteturadipiscing elit,
            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        """
print(multiline)
```

## String lnterpolation
> \(expr)

```swift
var str = "12.34KB"

let size = 12.34

str = String(size) + "KB"

str = "\(size)KB"
// 원하는 타입을 출력 불가
```

### Format Specifier
> %char

```swift
str = String(format: "%.1fKB", size)
// %.1f = 포맷 지정자

String(format: "Hello, %@", "Swift")
// %@ 연결

String(format: "%d", 12)
//  %d = 정수만

String(format: "%.3f", 12.34)
// %.n 소수점 자리
// %n.n 첫 번째 n자리까지 출력후 두 번째 n 소수점 자리 출력

String(format: "[%d]", 123)
String(format: "[%10d]", 123)       // 오른쪽 정렬
String(format: "[%-10d]", 123)      // 왼쪽 정렬

let firstName = "Yoon-ah"
let lastName = "Lim"

let korFormat = "그녀의 이름은 %2$@ %1$@ 입니다."
let engFormat = "Her name is %1$@ %2$@."

String(format: korFormat, firstName, lastName)
String(format: engFormat, firstName, lastName)

str = "\\"
print(str)

print("A\tB")       // \t 탭

print("C\nD")       // \n 줄바꿈

print("\"hello\" He said.")     // \", \' 따옴표 추가
```

## String lndices
```
let str = "Swift"

let firstCh = str[str.startIndex]
print(firstCh)

// 마지막 문자열 인덱스에 접근하려면 필요
let lastCharIndex = str.index(before: str.endIndex)
let lastCh = str[lastCharIndex]
print(lastCh)


// 두 번째 인덱스 접근
let secondCharIndex = str.index(after: str.startIndex)
let secondCh = str[secondCharIndex]
print(secondCh)


// 세 번째 인덱스 접근
var thirdCharIndex = str.index(str.startIndex, offsetBy: 2)
var thirdCh =  str[thirdCharIndex]
print(thirdCh)

// 네 번째 인덱스 접근
var fourCharIndex = str.index(str.startIndex, offsetBy: 3)
var fourCh = str[fourCharIndex]
print(fourCh)

// 마지막 인덱스에서 -3 인덱스 접근
thirdCharIndex = str.index(str.endIndex, offsetBy: -3)
thirdCh = str[thirdCharIndex]
print(thirdCh)


// 인덱스 있나 확인
if thirdCharIndex < str.endIndex && thirdCharIndex >= str.startIndex {
    
}

// 문자열 인덱스를 사용하는 이유
// 유니코드의 독립적인 문자열을 사용하기 때문
```

## String Basics
```swift
var str = "Hello, Swift String"

var emptyStr = ""           // 빈 문자열
emptyStr = String()         // 길이가 0인 생성자

let a = String(true)        // 문자열 ture

let b = String(12)
let c = String(12.34)

let d = String(str)

let hex = String(123, radix: 16)        // radix 진수 키워드 16진수
let octal = String(123, radix: 8)       // 8진수
let binary = String(123, radix: 2)      // 2진수

let repeatStr = String(repeating: "🤣", count: 7)       // repeating: 이 문자를, count: n번 반복

let unicode = "\u{1f44f}"       // 유니코드 출력

let e = "\(a) \(b)"
let f = a + b

str += "!!"

str.count       // 문자열 길이가 정수로 리턴

str.isEmpty     // 빈 문자열인지 확인

str == "Apple"  // 비교연산자 확인

"apple" !=  "Apple"

"apple" < "Apple"



str.lowercased()        // 모든 문자를 소문자로 바꾸고 리턴

str.uppercased()        // 모든 문자를 대문자로 바꾸고 리턴
str

str.capitalized         // 속성 각 단어의 첫 번째 문자를 대문자로 고치고 리턴

"apple ipad" .capitalized

// 문자열의 문자 집합
// Character Sequence
for char in "Hello" {
    print(char)
}

let num = "1234567890"
num.randomElement()     // 랜덤

num.shuffled()          // 문자를 랜덤으로 섞어서 문자 배열로 나타내줌
```

## Substring
```swift
let str = "Hello, Swift"
let l = str.lowercased()

var first = str.prefix(2)       // subString를 리턴
// 기억
// Substring은 원본 문자열의 메모리를 공유한다.

first.insert("!", at: first.endIndex)       // insert 메소드는 원본 문자열을 바꿈

str
first

let nuwStr = String(str.prefix(1))

// 축약 중
let s = str[..<str.index(str.startIndex, offsetBy: 2)]

str[str.index(str.startIndex, offsetBy: 2)...]

let lower = str.index(str.startIndex, offsetBy: 2)
let upper = str.index(str.startIndex, offsetBy: 5)
str[lower...upper]
```
## String Editing
### Appending String and Characters
```swift
var str = "Hello"
str.append(", ")    // 추가 변수만 가능   // 원본을 변경
str

let s = str.appending("Swift")      // 새로운 상수나 변수 문자열에 값이 추가
str
s
s.appending("!!")

"File size is ".appendingFormat("%.1f", 12.3456)        // 문자열 연결

var st = "Hello Swift"

st.insert(",", at: st.index(st.startIndex, offsetBy: 5))

if let sIndex = st.firstIndex(of: "S") {
    st.insert(contentsOf: "Awesome ", at: sIndex)
}

st
```

## Replacing Substrings
```swift
var str = "Hello, Objective-C"

if let range = str.range(of: "Objective-C") {   // range = of: 문자열을 찾아서
    str.replaceSubrange(range, with: "Swift")   // 변경
}

str

if let range = str.range(of: "Hello") {
    let s = str.replacingCharacters(in: range, with: "Hi")      // 원본을 변경하지 않음
    
    s
    str
}

var s = str.replacingOccurrences(of: "Swift", with: "Awesome Swift")        // 첫 번째 파라미터가 있다면 두 번째 파라미터로 리턴해라
s

s = str.replacingOccurrences(of: "swift", with: "Awesome Swift")        // 스위프트 소문자 s   // 문자열 변경은 대소문자 비교
s

s = str.replacingOccurrences(of: "Swift", with: "Awesome Swift", options: [.caseInsensitive])   // 대소문자 비교하지 않도록 함
s
```
### Removing Substrings
```swift
var str = "Hello, Asesome Swift!!!"

let lastCharIndex = str.index(before: str.endIndex)

var removed = str.remove(at: lastCharIndex)

removed
str

removed = str.removeFirst()
removed
str

str.removeFirst(2)
str


str.removeLast()
str

str.removeLast(2)
str

if let range = str.range(of: "Awesome") {
    str.removeSubrange(range)       // 범위 삭제 메소드
    str
}


str.removeAll()
str

str.removeAll(keepingCapacity: true)    // 메모리는 삭제되지 않음?

str = "Hello, Awesome Swift!!!"

var substr = str.dropLast()

substr = str.dropLast(3)

substr = str.drop(while: {(ch) -> Bool in
    return ch != ","
})
substr
// 잘 이해안감
```

## Comparing Strings
```swift
let largeA = "Apple"
let smallA = "apple"
let b = "Banana"

largeA == smallA
largeA != smallA

largeA < smallA
largeA < b
smallA < b


largeA.compare(smallA) == .orderedSame      // 문자열이 같은지 비교하려면 .orderedSame 써줘야됨

largeA.caseInsensitiveCompare(smallA) == .orderedSame       // 대소문자 구분하지 않고 비교하려면 caseInsensitiveCompare

largeA.compare(smallA, options: [.caseInsensitive]) == .orderedSame


let str = "Hello, Swift Programming!"
let prefix = "hello"
let suffix = "Programming"

str.hasPrefix(prefix)       // 문자열을 앞에서 부터 비교
str.lowercased().hasPrefix(prefix.lowercased())     // 문자열을 소문자로 맞추고 비교 (대소문자 비교X랑 같음)


str.hasSuffix(suffix)       // 문자열을 뒤에서 부터 비교
```

## Finding Substrings
```swift
let str = "Hello, Swift"

str.contains("swift")
str.lowercased().contains("swift")      // 대소문자x 소문자로 다 바꿔줬기 때문에

str.range(of: "Swift")
str.range(of: "Swift", options: [.caseInsensitive])


let str2 = "Hello, Programming"
let str3 = str2.lowercased()

var common = str.commonPrefix(with: str2)       // 공통적인 접두어만 리턴

common = str.commonPrefix(with: str3)           // 대소문자 비교함
str.commonPrefix(with: str3, options: [.caseInsensitive])

str3.commonPrefix(with: str3, options: [.caseInsensitive])      // 대소문자를 비교하지 않고 공통된 접어두만 리턴
```

## String Options #1
### Case Insensitive Option
```swift
"A" == "a"

"A".caseInsensitiveCompare("a") == .orderedSame

"A".compare("a", options: [.caseInsensitive]) == .orderedSame
```

### Literal Option
```
let a = "\u{D55C}"
let b = "\u{1112}\u{1161}\u{11AB}" // ㅎ ㅏ ㄴ
a == b
a.compare(b) == .orderedSame

a.compare(b, options: [.literal]) == .orderedSame
```

### Backwards Option
```swift
let korean = "행복하세요"
let english = "Be happy"
let arabic = "كن سعيدا"

if let range = english.range(of: "p") {
    english.distance(from: english.startIndex, to: range.lowerBound)
}

if let range = english.range(of: "p", options: [.backwards]) {  // .backwards 문자열을 읽는 방향을 바꿈 (거꾸로)
    english.distance(from: english.startIndex, to: range.lowerBound)
}
```

### Anchored Option
```
// 검색 대상을 바꿈
let str = "Swift Programming"

if let result = str.range(of: "Swift") {
    print(str.distance(from: str.startIndex, to: result.lowerBound))
} else {
    print("not found")
}

if let result = str.range(of: "Swift", options: [.backwards]) {
    print(str.distance(from: str.startIndex, to: result.lowerBound))
} else {
    print("not found")
}

if let result = str.range(of: "Swift", options: [.anchored]) {
    print(str.distance(from: str.startIndex, to: result.lowerBound))
} else {
    print("not found")
}

if let result = str.range(of: "Swift", options: [.anchored, .backwards]) {
    print(str.distance(from: str.startIndex, to: result.lowerBound))
} else {
    print("not found")
}

str.lowercased().hasPrefix("swift")

if let _ = str.range(of: "swift", options: [.anchored, .caseInsensitive]) {
    print("same prefix")
}


str.hasSuffix("swift")  // 아직 뭔 소린지 모르겠음
```
