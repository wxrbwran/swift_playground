// 1 安装
import UIKit

var str = "Hello, playground"

print(str)
// 2 let var 基本类型 string/int/float/double/boolean/元组 optional
var pen:(name: String, price: Int) = ("钢笔", 2)

print(pen)

var (theName, thePrice) = pen

print(theName)

var obj:String?;
if obj == nil {
    print("nil")
}

var str1:String? = "HS"

str1!
var a = 1, b = 2
(a, b) = (b, a)

print(a, b);

var sample:Int? = 10;

if let tmp = sample, tmp > 30 {
   print("合格");
}

//3 char/string/list/set/dictionart

var c1 = "hello"
var c2 = "world"

print(c1 + " " + c2)


print("\(c1) \(c2)")

MemoryLayout<String>.size
MemoryLayout<Character>.size
MemoryLayout<Int>.size
MemoryLayout<Float>.size
MemoryLayout<Double>.size

let name = "hello world"

//for item in name {
//    print(item)
//}

print("\u{21}");
