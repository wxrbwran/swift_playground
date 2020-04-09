// String 方法 属性
import UIKit

var str = "Hello, playground"
var str1 = "";
print(str.isEmpty);
print(str1.isEmpty);
print(str.count);
print(str1.count);
var startIndex = str1.startIndex;
var endIndex = str1.endIndex;

print(startIndex, endIndex);
var char = str[str.index(after: startIndex)]
var subStr = str[startIndex...str.index(startIndex, offsetBy: 4)]

subStr.append(Character("?"))
str.append(" !!!")
str.insert("~", at: str.endIndex)
str.insert(contentsOf: " wwwww ~", at: str.startIndex)

str.uppercased();
str.lowercased();

// 集合
// Array
var arr1:[Int], arr2:Array<Int>;
var arr3:[Int] = []
arr3 = [1,2,3]
var arr4 = Array<Int>()
arr4 = Array(repeating: 1, count: 10)
arr4 = Array(arrayLiteral: 1,2,3)
var arr5 = [String](repeating: "hello", count: 3)


arr3.count

!arr4.isEmpty

arr4[0]

var new4 = arr4[0...2]
new4.first
new4.last
new4[1] = 999
new4[0...2] = [1,2,3]
new4.append(10)
new4.append(contentsOf: [5,6,7])
new4.insert(0, at: 1)
new4.insert(contentsOf: [66,77], at: 0)
new4.remove(at: 0)
new4.removeLast()
new4
new4.removeFirst(2)
new4
//new4.replaceSubrange(0...2, with: [55,66])
//new4.replaceSubrange(0...1, with: [0,1,2])
new4.contains(10)
new4[2]
for item in new4 {
    print(item)
}
for item in new4.indices {
    print(item)
}
for item in new4.enumerated() {
    print(item)
}

var sortArray = [1,3,4,4,52,312,312,3,5,66778,5345];

sortArray.sort()
sortArray.max()
sortArray.min()

// Set
var s1:Set<Int> = [1,2,3,4]
var s2 = Set(arrayLiteral: 5,6,7,8)
s1.count
s2.isEmpty
s1.contains(1)
s1.max()
s1.insert(11)
s1.remove(1)
s1
print("========")
for item in s1 {
    print(item)
}
for item in s1.indices {
    print(item)
}
for item in s1.enumerated() {
    print(item)
}

// Dictionary
var d1:[Int: String]
var d2:Dictionary<Int, String>
d1 = [1: "1", 2: "2", 3: "3"]
d2 = [3: "333"]
d2 = Dictionary(dictionaryLiteral: (4, "33333"))
d1.count
d1.isEmpty
d1[2]
d1[2] = "222"
d1[4] = "4"
d1[6]
for item in d1 {
    print(item)
}
for item in d1.keys {
    print(item)
}
for item in d1.values {
    print(item)
}

var ss1 = "China"
var ss2 = "MyLove"

var ss3 = "\(ss1) \(ss2)"

for str in ss3 {
    if str == "L" {
        print(str)
    }
}

var x1 = "asdasd!asdsad?2132131!!你好!world?"
var newX1:String = "";
for char in x1 {
    if !["!", "?"].contains(char) {
        newX1.append(char)
    }
}
print(newX1)

var x2 = "abcdefg"
var arrayX2 = Array(x2)
String(arrayX2.reversed())

var newX2 = String(x2.reversed())
newX2

var arrOri2:[Int] = [];

for index in 0...9 {
    arrOri2.append(index);
}
print(Array(arrOri2.reversed()))

var ts1:Set<Int> = [2,4,3,5]
var ts2:Set<Int> = [3,4,7,1]
var ts3 = ts1.union(ts2)
ts3

var scores = ["王晓": 98, "邹明": 86, "小伟": 93]
//for item in scores.sorted(by: (p1, p1) -> Bool in
//    return p1.value > p2.value
//    ) {
//        print(item)
//}

