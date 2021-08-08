## Tuples
### Tuple Expression
> (expr1, expr2, ...)
- 튜플 = 2개 이상의 값을 저장할 수 있다.
- 추가하거나 삭제 불가능
- 튜플은 값을 정할 때 모든게 결정 됨

```swift
let date = ("<html>", 200, "OK", 12.34)
type(of: date)		// (String, Int, String, Double).Type
```

### Explicit Member Expression
> tuple.n

```swift
date.0			// "<html>"
date.1			// 200
date.2			// "OK"
date.3			// 12.34

// 새로운 변수에 값을 입력받아 값 변경 가능
var mutableTuple = date
mutableTuple.1 = 404

mutableTuple		// (.0 "<html>", .1 404, .2 "OK", .3 12.34)
```

## Named Tuples
> (name1: expr1, name2: expr2, ...)
tuple.memberName

```swift
let data = ("<html>", 200, "ok", 12.34)

let name = (body: "<html>", statusCode: 200, statusMessage: "OK", dateSize: 12.34)

name.body			// "<html>"
name.statusCode		// 200
```

## Tuple Decomposition
> let (name1, name2, ...) = tupleExpr
var (name1, name2, ...) = tupleExpr

```swift
let data = ("<html>", 200, "OK", 12.34)

// 개별로 전달
//let body = data.0
//let code = data.1
//let message = data.2
//let size = date.3

// 분활 튜플(이름의 갯수와 값의 갯수가 같아야됨)
let (body, code, message, _) = data
// size = wildcard(_) 로 변경 가능
// 이름을 와일드카드로 다 변경 가능
```

## Tuple Matching
아직은 잘 이해 안가... 벨류 바인딩이 무엇인지 더 공부해봐야한다...

```swift
let resolution = (1920.0, 1080.0)

if resolution.0 == 3840 && resolution.1 == 2160 {
    print("4K")
}

// 튜플은 if문으로 쓰는 것 보다 switch문으로 사용하는게 더 좋다.
switch resolution {
case let(w, h) where w / h == 16.0 / 9.0:   // 벨류 바인딩?
    print("16:9")
case (_, 1080):
    print("1080p")
case (3840...4096, 2160):
    print("4K")
default:
    break
}
```




