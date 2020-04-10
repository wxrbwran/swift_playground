// func
func isGT10(count:Int) -> Bool {
    return count > 10
}

isGT10(count: 11)
isGT10(count: 1)

func myFn() -> Void{}
func myFn2() {}

func searchById(id: Int) -> (success: Bool, data: String) {
    return (true, "f19wnfTgqA9AhJrORAQ60Zpr")
}

func myFn3(params: Int) -> Int? {
    guard params < 5 else {
        return 666;
    }
    return nil;
}

if let tmp = myFn3(params: 11) {
    print("adsasd")
}

func myFn4(outparams inparams: Int) -> Int {
    return inparams;
}

myFn4(outparams: 22)

func myFn5(_ inparams: Int) -> Int {
    return inparams;
}
myFn5(333)

func myFn6(inparams: Int, in2 :Int = 3) -> Int {
    return inparams + in2;
}
myFn6(inparams: 333)
myFn6(inparams: 333, in2: 6)

func myFn7(params: Int...) -> Int {
    var sum = 0;
    for num in params {
        sum += num
    }
    return sum;
}
print(myFn7(params: 1,2,3,4))
func myFn8(params: Int..., str: String) -> Int {
    var sum = 0;
    for num in params {
        sum += num
    }
    print("\(str) \(sum)")
    return sum;
}
print(myFn8(params: 1,2,3,4, str: "总和："))

func myFn9(in1: inout Int) -> Int {
    in1 += 1
    return in1 + 1;
}
var no = 10;
myFn9(in1: &no)
// 嵌套
var addFn: (Int, Int) -> Int
func myFn10() -> (Int, Int) -> Int {
    return { (param1: Int, param2: Int) in
        return param1 + param2;
    }
}
addFn = myFn10()
addFn(1,2)
func myFn11() -> (Int, Int) -> Int {
    func subFn(param1: Int, param2: Int) -> Int {
        return param1 + param2
    }
    return subFn;
}
addFn = myFn11()
addFn(2,3)

//闭包

// 1. 标准函数
func myFn12(param: Int) -> Int {
    return param
}
myFn12(param: 11)
// 2. 闭包实现
let myClosures = {(param: Int) -> Int in
    return param
}
myClosures(12)

// 排序函数
//func mySort(arr: inout [Any], sortClosure: (Int, Int) -> Bool) -> Array<Any> {
//    // 冒泡
//    let count = arr.count
//    for index in arr.indices {
//        if (index == count - 1) {
//            break;
//        }
//        for idx in 0...(count - index - 1) {
//            if sortClosure(idx, idx + 1) {
//
//            } else {
////                swap(&arr[idx], &arr[idx + 1])
//                arr.swapAt(idx, idx + 1)
//            }
//        }
//    }
//
//    return arr;
//}
//
//var array:[Any] = [1,4,3,5,7,5,4,2,7]
//mySort(arr: &array, sortClosure: {(index: Int, indexNext: Int) -> Bool in
//    return (array[index] as! Int) > (array[indexNext] as! Int);
//})

func jiecheng(num: Int) -> Int {
    guard num > 0 else {
        return 1
    }
    return num * jiecheng(num: num - 1)
}

jiecheng(num: 6)

func count(arr: [Int]) -> (z: Int, f: Int) {
    var z:Int = 0, f: Int = 0
    for num in arr {
        if num > 0 {
            z += 1
        } else {
            f += 1
        }
    }
    return (z: z, f: f)
}
count(arr: [-1,-2,3, 4, 5])

// 高级运算符和枚举
enum Surname {
    case 张, 王, 李, 赵
//    case 王
//    case 李
//    case 赵
}
var su: Surname
su = Surname.张
su = .王

switch su {
    case .张:
        print("姓张")
    case .李:
        print("姓李")
    case .王:
        print("姓王")
    default:
        print("...");
}

enum IntEnum:Int {
    case 一 =  1
    // 默认为2
    case 二
    case 四
}

var num:IntEnum = .一
num.rawValue
num = .二
num.rawValue
num = .四
num.rawValue

postfix operator *!
postfix func *! (param: Int) -> Int {
    return jiecheng(num: param)
}

6*!

enum Transport {
    case car(speed: Float, price: Int)
    case boat(speed: Float, price: Int)
}

var car = Transport.car(speed: 120.0, price: 100)
