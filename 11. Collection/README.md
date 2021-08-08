## Array
### Array Literal
> [elem, elem, ...]

```swift
let nums = [1, 2, 3]
```

### Array Type
> Array<T>
  [T]
  
```swift
let strArray: Array<String>
let strArray2: [String]
```
## Array Basics
### Creating an Array
  
```swift
let nums = [1, 2, 3]

let emptyArray: [Int] = []      // 빈 배열이면 타입 지정해줘야 됨

let emptyArray2 = Array<Int>()

let emptyArray3 = [Int]()

let zeroArray = [Int](repeating: 0, count: 10)      // 첫 번째 파라미터: 배열을 채울 기본값, 두 번째 파라미터는 갯수
```
  
### Inspecting an Array
```swift
nums.count

nums.count == 0     // 배열이 비어있는지 확인

nums.isEmpty        // 안비어있음

emptyArray.isEmpty  // 비어있음
```
  
## Accessing Elements
```swift
let fruits = ["Apple", "Banana", "Melon"]

fruits[0]

fruits[2]

fruits[0...2]

fruits[fruits.startIndex]

//fruits[fruits.endIndex]     // endIndex는 마지막 인덱스의 다음 인덱스

fruits[fruits.index(before: fruits.endIndex)]

fruits.first
fruits.last

// 배열이 비어있음
emptyArray.first        // 배열이 비어있음 nil을 리턴
emptyArray.last

emptyArray[0]           // 배열이 비어있음 오류
```
  
## Adding Elements
```swift
var alphabet = ["A", "B", "C"]

alphabet.append("E")
// alphabet.append(1)      // 타입이 다름

alphabet.append(contentsOf: ["F", "G"])        // 2개 이상의 요소를 동시에 추가하려면 .append(contentsOf: []) 옵션을 사용. 추가하고 싶은 것을 배열로 추가

alphabet.insert("D", at: 3)     // .insert 1개 추가 첫 번째 파라미터는 요소, 두 번째 파라미터는 인덱스 위치
alphabet.insert(contentsOf: ["a", "b", "c"], at: 0)     // 2개 이상 요소 추가 .insert(contentsOf: [], at:) 첫 번째 파라미터에 2개 이상의 요소를 배열로 추가, 두 번째 파라미터는 인덱스 위치

// 반드시 필요한 경우에만 insert 메소드 활용

alphabet[0...2] = ["x", "y", "z"]       // 인덱스 배열로 값 변경
alphabet

alphabet.replaceSubrange(0...2, with: ["a", "b", "c"])      // 메서드로 인덱스 값을 변경하는 법
alphabet

alphabet[0...2] = ["z"]     // 배열 값을 변경할 때 값을 모두 바꿔줘야 하는 건 아님
alphabet

alphabet[0..<1] = []        // 빈 배열을 전달해주면 값을 삭제 할 수 있음
alphabet
```
                
## Removing Elements
```swift
alphabet = ["A", "B", "C", "D", "E", "F", "G"]

alphabet.remove(at: 2)  // 인덱스 2번 위치에 있는 C 삭제
alphabet

alphabet.removeFirst()
alphabet

alphabet.removeFirst(2)      // 배열 앞부분 2개 인덱스 삭제
alphabet

alphabet.removeLast()
alphabet

alphabet.removeAll()

alphabet.popLast()          // 배열의 마지막 요소를 삭제하고 배열이 비어있다고 판단하면 nil 호출 (값이 비어있나 확인하는 용도)

alphabet = ["A", "B", "C", "D", "E", "F", "G"]
alphabet.popLast()
alphabet

alphabet.removeSubrange(0...2)      // 배열의 특정 부분 삭제
alphabet

alphabet[0...2] = []
alphabet
```
                
## Comparing Arrays
```swift
let a = ["A", "B", "C"]
let b = ["a", "b", "c"]

a == b
a != b

a.elementsEqual(b)      // 비교 메서드 Bool 타입으로 리턴

a.elementsEqual(b, by: {(lhs, rhs) -> Bool in
    return lhs.caseInsensitiveCompare(rhs) == .orderedSame      // 대소문자 무시하고 비교
})        // 비교 배열을 첫 번째 파라미터에 넣고, 두 번째 파라미터는 스트링 타입을 클로저로 감싸서 리턴
```

## Finding Elements
  ```swift
let nums = [1, 2, 3, 1, 4, 5, 2, 6, 7, 5, 0]

nums.contains(1)
nums.contains(8)


nums.contains{ (n) -> Bool in
    return n % 2 == 0
}

nums.first{ (n) -> Bool in
    return n % 2 == 0
}

nums.firstIndex { (n) -> Bool in
    return n % 2 == 0
}

nums.firstIndex(of: 1)

nums.lastIndex(of: 1)
```

## Sorting on Array
```swift
// 메서드에 ed 붙은거는 새로운 배열로 리턴

// 불변배열 정리

// 오름차순
// sort => 배열을 직접 정렬
// sorted => 정렬된 새로운 배열은 리턴

nums.sorted()
nums

// 내림차순
// 클로저를 이용하여 정렬코드
nums.sorted{(a,b) -> Bool in
    return a > b
}

nums.sorted().reversed()
[Int](nums.sorted().reversed())


// 가변배열 정리
var mutableNums = nums
mutableNums.sort()
mutableNums.reverse()


mutableNums
mutableNums.swapAt(0, 1)        // 교체 메서드(인덱스를 교체함)

mutableNums.shuffle()           // 요소 순서 랜덤으로 변경
```
  
## Dictionary #1
  ### Dictionary Literal
> [Key: value, Key; value, ...]
  
```swift
// 키의 타입과 값의 타입이 같아야 됨

var dict = ["A": "Apple", "B": "Banana"]

dict = [:]
```

### Dictionary Type
> Dictionary<K, V>
  [K:V]
  
```swift
let dict1: Dictionary<String, Int>      // 정식 문법
let dict2: [String:Int]         // 축약 문법
```
  
### Creating a Dictionary
  ```swift
let words = ["A": "Apple", "B": "Banana", "C": "City"]

let emptyDict: [String: String] = [:]

let emptyDict2 = [String: String]()

let emptyDict3 = Dictionary<String, String>()
```
  
### Inspecting a Dictionary
  ```swift
words.count
  words.isEmpty
```
  
### Accessing Keys and Values
```swift
words["A"]
words["Apple"]

let a = words["E"]
let b = words["E", default: "Empty"]


for k in words.keys.sorted(){        // 키 출력
    print(k)
}

for v in words.values {     // 값 출력
    print(v)
}


// 배열로 리턴하고 싶으면 배열 생성자로 전달
let keys = Array(words.keys)
let values = Array(words.values)
keys
values
```

## Dictionary #2
### Adding Key and Values
```swift
var words = [String: String]()
words["A"] = "Apple"        // 하나의 요소 저장
words["B"] = "Banana"
words.count
words

words["B"] = "Ball"
words.count
words

words.updateValue("City", forKey: "C")      // 메소드로 추가
words.updateValue("Circle", forKey: "C")
```
  
### Removing Keys and Values
```swift
words
words["B"] = nil        // 키 요소 삭제

words

words["Z"] = nil

words.removeValue(forKey: "A")  // 삭제된 값 리턴

words

words.removeAll()
```

  ## Dictionary #3
### Comparing Dictionaries
```swift
let a = ["A": "Apple", "B": "Banana", "C": "City"]
let b = ["A": "Apple", "C": "City", "B": "banana"]

a == b
a != b

// 잘못된 코드
//a.elementsEqual(b) { (lhs, rhs) -> Bool in      // 클로저 사용
//
//    return lhs.key.caseInsensitiveCompare(rhs.key)
//        == .orderedSame &&
//        lhs.value.caseInsensitiveCompare(rhs.value)
//        == .orderedSame
//    // 키와 값 대소문자X 비교
//}

let aKeys = a.keys.sorted()
let bKeys = b.keys.sorted()

aKeys.elementsEqual(bKeys) { (lhs, rhs) -> Bool in
    guard lhs.caseInsensitiveCompare(rhs)
        == .orderedSame else {
        return false
    }
    
    guard let lv = a[lhs], let rv = b[rhs],
        lv.caseInsensitiveCompare(rv) == .orderedAscending
        else {
        return false
    }
    return true
}
```
  
### Finding Elements
```swift
var words = ["A": "Apple", "B": "Banana", "C": "City"]

let c: ((String, String)) -> Bool = {
    $0.0 == "B" || $0.1.contains("i")
}

words.contains(where: c)

let r = words.first(where: c)
r?.key
r?.value

words.filter(c)
```
  
## Set #1
  ### Set Type
> Set<T>
  
```swift
//let set = [1, 2, 2, 3, 3, 3]        // 배열
let set: Set = [1, 2, 2, 3, 3, 3]  // Set
set.count

// Set은 중복되는 것을 걸러넴
// 타입 생략 가능
```

### Inspecting a Set
```swift
set.contains(1)
```

### Testing for Membership
```swift
var words = Set<String>()

var insertResult = words.insert("Swift")
insertResult.inserted
insertResult.memberAfterInsert

insertResult = words.insert("Swift")
insertResult.inserted
insertResult.memberAfterInsert

var updateResult = words.update(with: "Swift")
updateResult

updateResult = words.update(with: "Apple")
updateResult

var value = "Swift"
value.hashValue

updateResult = words.update(with: "value")
updateResult

value = "Hello"
value.hashValue

updateResult = words.update(with: "value")
updateResult

struct SampleData: Hashable {
    var hashValue: Int = 123
    var data : String
    
    init(_ data: String) {
        self.data = data
    }
    
    static func == (lhs: SampleData, rhs: SampleData) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}

var sampleSet = Set<SampleData>()

var data = SampleData("Swift")
data.hashValue

var r = sampleSet.insert(data)
r.inserted
r.memberAfterInsert
sampleSet

data.data = "Hello"
data.hashValue

r = sampleSet.insert(data)
r.inserted
r.memberAfterInsert
sampleSet


sampleSet.update(with: data)
sampleSet
```
  
### Adding and Removing Elements
  ```swift
words
words.remove("Swift")       // 하나의 요소 삭제를 할 때
words

words.remove("Ghost")       // 존재하지 않는 값 삭제 (값이 없으면 nil 리턴)

words.removeAll()
words
```
  
## Set #2
### Comparing Sets
https://0urtrees.tistory.com/100 Set 관한 메서드 참고  
```swift
var a: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var b: Set = [1, 3, 5, 7, 9]
var c: Set = [2, 4, 6, 8, 10]
let d: Set = [1, 7, 5, 9, 3]

a == b
a != b

b == d      // 순서를 제외한 나머지를 비교 Set은 순서 상관없음

b.elementsEqual(d)          // 순서대로 비교하는 메서드

a.isSubset(of: a)
a.isStrictSubset(of: a)

b.isSubset(of: a)
b.isStrictSubset(of: a)

a.isSuperset(of: b)
a.isStrictSuperset(of: b)

a.isSuperset(of: c)
a.isStrictSuperset(of: c)



a.isDisjoint(with: b)           // 교집합이면 false 서로소 집합이면 true
a.isDisjoint(with: c)
b.isDisjoint(with: c)
```
  
### Combining Sets
```swift
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

var result = b.union(c)

result = b.union(a)     // 기본Set을 변경하지 않음

b.formUnion(c)          // 원본을 변경 합집합

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

result = a.intersection(b)      // 두 집합의 교집합을 새로운 Set으로 저장

result = c.intersection(b)

a.formIntersection(b)           // a에서 b의 교집합의 홀수를 제외한 나머지 모든 요소를 삭제
a

b.formIntersection(c)

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

result = a.symmetricDifference(b)       // 둘의 여집합을 새로운 Set으로 리턴

result = c.symmetricDifference(b)

a.formSymmetricDifference(b)            // 여집합의 나머지 삭제

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

result = a.subtracting(b)
a.subtracting(b)                // 원본 변경(차집합)
```
  
## Iterting Collections
## for-in
>   for element in collection {
  		statements
  }
  
```swift
print("Array", "============")
let arr = [1,2,3]
for num in arr {
    print(num)
    // 배열을 for in 반복문으로 열거하면 배열의 수 만큼 반복
}

print("Set", "==============")
let set: Set = [1,2,3]
for num in set {
    print(num)
}

print("Dictionary", "============")
let dict = ["A": 1, "B": 2, "C": 3]
for (key, value) in dict {
    print(key, value)
}
```

### forEach

```swift
print("Array", "===============")
let arr = [1,2,3]
arr.forEach{(num) in
    print(num)
}

print("Set", "=============")
let set: Set = [1,2,3]
set.forEach{(num) in
    print(num)
}

print("Dictionary", "==============")
let dict = ["A":1, "B":2, "C":3]
dict.forEach{(elem) in
    print(elem.key, elem.value)
}

func withForIn() {
    print(#function)
    let arr = [1,2,3]
    for num in arr {
        print(num)
        return
    }
}

func withForeach() {
    print(#function)
    let arr = [1,2,3]
    arr.forEach{(num)  in
        print(num)
        return
    }
}

withForIn()
withForeach()
```
  
