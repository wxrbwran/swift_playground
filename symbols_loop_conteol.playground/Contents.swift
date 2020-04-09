// 空合并运算符 ??
var q:Int? = 8;
var value:Int
// Optional 拆包
value = q ?? 0;

// 区间运算符
// [0, 10]
var range1 = 0...10
// [0 ,10)
var range2 = 0..<10

print(range1 ~= 8)

// loop
for index in 0...5 {
    print(index)
}

var sum = 0
for _ in 1...100 {
    sum += 1;
}
print(sum);

var a1:[Int] = [1,34,123,1,23,123]
for key in a1 {
    print(key)
}
var d1:[Int: Int] = [1:2,3:4, 5:6]

for (key, value) in d1 {
    print(key, value)
}

// repeat while / while
// if else / if / switch case
// guard else

//var random = arc4random();

// 水仙花数
