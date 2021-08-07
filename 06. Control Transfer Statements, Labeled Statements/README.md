```swift
for index in 1...100 {
	print("start")
    
    if index < 5 {
    	continue
    }
    if index > 10 {
    	break
    }
    print("end")
}
```

## break
> break - 현재 실행 중인 문장을 중지하고 이어지는 다음 문장을 실행한다.

```swift
for i in 1...10{
    print("OUTER LOOP", i)
    
    for j in 1...10{
        print("   inner loop", j)
        
        if j > 2 {
            break
        }
    }
}
```

> 기억하기
1. break는 문장을 중지한다.
2. break는 문장이 중첩되어 있을 때 인법한 문장만 중지한다.

## continue
> continue - 현재 실행 중인 반복문을 중지하고 다음 반복을 실행한다.


```swift
for i in 1...10{
    print("OUTER LOOP", i)
    
    for j in 1...10{
        if j % 2 == 0 {
            continue
        }
        print("   inner loop", j)
    }
}
```

> 기억하기
1. continue는 현제 실행 중인 반복문을 중지하고 다음 반복을 실행한다.
2. continue는 가장 인접한 문장에 영향을 준다.

## Labeled Statment
> - Labeled Statment는 주로 제어문과 반복문이 중첩된 코드에서 가장 인접한 문장이 아니라 원하는 문장을 직접 종료 할 때 활용한다.
- Label의 이름을 가진 코드를 아예 종료한다.

```swift
Label: for i in 1...3{
    print("OUTER LOOP", i)
    
    for j in 1...3{
        print("   inner loop", j)
        
        break Label
    }
}
```

