// 构造与析构

class MyClass {
    var count: Int = 0 {
        willSet(new) {
//            count = new
        }
        didSet(old) {
            print("old count value \(old)");
        }
    }
    var name: String{
        didSet(old) {
            print("old name value \(old)");
        }
    }
    var opt: String?
    init() {
        name = "HS"
    }
}
class MyClass2 {
    var count = 2
    var name = "aaa"
}

class BaseClass {
    // 指定构造方法
    required init() {
        print("BaseClass Designated")
    }
    // 便利构造方法，最后需要引用指定构造方法
    convenience init(param: String) {
        print("BaseClass Convenience")
        self.init()
    }
}

class SubClass: BaseClass {
    override required init() {
        super.init()
    }
    convenience init(param: String) {
        self.init()
    }
    convenience init(param: Int) {
        self.init(param: "HS")
    }
    deinit {
        print("销毁！")
    }
}
var s2: SubClass? = SubClass()
s2 = nil
