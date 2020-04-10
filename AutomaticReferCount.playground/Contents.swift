
//
func test() {
    var a = 10
    while a > 0 {
        a -= 1
        var b = 2
    }
    if a < 0 {
        var c = 3
    }
}

class TestClass {
    var name: String = "HS"
}
var obj: TestClass? = TestClass()
obj = nil

// Error
enum MyError: Error {
    case DestoryError
    case NormalError
    case SimpleError
}
print("should error")
//throw MyError.DestoryError
print("done")
// do catch

func myFn(param: Bool) throws -> Void {
    if param {
        print("ok")
    } else {
        throw MyError.SimpleError
    }
}

do {
    try myFn(param: false)
} catch MyError.DestoryError{
    print("Error DestoryError")
} catch MyError.SimpleError {
    print("Error SimpleError")
} catch {
    print("Error others")
}

// 将异常映射为Optional值 失败为 nil
var tmp = try? myFn(param: false)

if (tmp == nil) {
    print("挂了")
} else {
    print("go go go")
}

// try! 终止异常传递 一定不会出错 极端场景

// 延时执行语法
func TestFn() throws -> Void {
    defer {
        print("finished")
    }
    print("do sth")
    throw MyError.NormalError
}
try TestFn()
