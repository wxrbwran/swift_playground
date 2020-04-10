// 属性与方法


enum Sex {
    case 男
    case 女
}

class Student {
    var name: String
    let sex: Sex
    var age: Int
    // 默认
    var school = "德州一中"
    init(name: String, sex: Sex, age: Int) {
        self.name = name
        self.sex = sex
        self.age = age
    }
    
    func study () {
        print("学习！")
    }
}

let stu1 = Student(name: "小明", sex: Sex.男, age: 13)
stu1.study()
stu1.age = 14
//stu1.sex = Sex.女

class Work {
    var name: String
    init(name: String) {
        self.name = name
        print("work init done.")
    }
}

class People {
    var age: Int
    lazy var work: Work = Work(name: "Teacher")
    init(age: Int) {
        self.age = age
    }
}
var p1 = People(age: 25)
p1.work.name

let M_PI = 3.141592657


// 计算属性
class Circle {
    var r: Double
    var center: (Double, Double)
    init(r: Double, center: (Double, Double)) {
        self.r = r
        self.center = center
    }
    var l: Double {
        get {
            return 2 * r * M_PI
        }
        set {
            r = newValue / 2 / M_PI
        }
    }
    
    var s: Double {
        get {
            return r * r * M_PI
        }
        set {
//            r = sqrt(newValue / M_PI)
        }
    }
}

var c1 = Circle(r: 3.0, center: (1.0, 1.0))
c1.l
c1.s
c1.l = 100
c1.r
c1.s

class Teacher {
    var name: String {
        willSet(new) {
            print("将要设置：name \(new)")
        }
        didSet(old) {
            print("已设置完：name \(old)")
        }
    }
    var age: Int
    init(name: String, age: Int) {
        self.age = age
        self.name = name
    }
    // static 不能被子类重写
    // 类属性
    static var job: String = "Teacher"
    // 类计算属性
    static var subName: String {
        return "LaoShi " + job
    }
    static func printSubName() -> String {
        return self.subName
    }
    // class 类属性可以被重写
    class var classSubName: String {
        return "LaoShi " + job
    }
}
Teacher.classSubName
Teacher.printSubName()
var t1 = Teacher(name: "X", age: 34)
t1.name
t1.name = "Y"
t1.name

class SubTeacher: Teacher {
    override class var classSubName: String {
        return "XiaoLaoShi " + job
    }
}

SubTeacher.classSubName

//
