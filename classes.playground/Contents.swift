// 结构体 Struct

struct SCar {
    var price: Int
    var brand: String
    var pertol: Int
    mutating func drive() {
        if pertol > 0 {
            pertol -= 1
            print("drive 10 km")
        }
    }
    mutating func addPertol() {
        pertol += 10
        print("add 10 pertol")
    }
}
var scar = SCar(price: 10000, brand: "www", pertol: 20)
//for _ in 0...100 {
//    if (car.pertol <= 0) {
//        car.addPertol()
//    } else {
//        car.drive()
//    }
//}
// 结构体是值类型。
var scar2 = scar
scar2.price = 1000
scar2.price
scar.price

// 类 Class

class ClassCar {
    var price: Int
    var brand: String
    var pertol: Int
    func drive() {
        if pertol > 0 {
            pertol -= 1
            print("drive 10 km")
        }
    }
    func addPertol() {
        pertol += 10
        print("add 10 pertol")
    }
    // 构造方法
    init(price: Int, brand: String, pertol: Int) {
        self.price = price
        self.brand = brand
        self.pertol = pertol
    }
}
var cCar = ClassCar(price: 10000, brand: "www", pertol: 20)

cCar.brand

//for _ in 0...100 {
//    if (classCar.pertol <= 0) {
//        classCar.addPertol()
//    } else {
//        classCar.drive()
//    }
//}
// 类是引用类型
var cCar2 = cCar
cCar2.price = 1000
cCar2.price
cCar.price

class Transportation {
    var petrol: Int = 10
    func drive() {
        if petrol > 0 {
            // self.petrol -= 1
            // 具体子类实现
        } else {
            self.addPetrol()
        }
    }
    func addPetrol() {
        self.petrol += 10
    }
}

class Car: Transportation {
    var tyre: Int
    override func drive() {
        super.drive();
        print("开车～")
        self.petrol -= 1
    }
    init(tyre: Int) {
        self.tyre = tyre
    }
}

class Boat: Transportation {
    var floor: Int
    override func drive() {
        super.drive();
        print("开船～")
        self.petrol -= 2
    }
    init(floor: Int) {
        self.floor = floor
    }
}

var car = Car(tyre: 3)
car.drive()
var boat = Boat(floor: 2)
boat.drive()

var boat2 = boat
//boat == boat2
boat === boat2

enum Sex {
    case 男
    case 女
}

class Student {
    var name: String
    var sex: Sex
    var age: Int
    
    init(name: String, sex: Sex, age: Int) {
        self.name = name
        self.sex = sex
        self.age = age
    }
    
    func study () {
        print("学习！")
    }
}

let student1 = Student(name: "小明", sex: Sex.男, age: 13)
student1.study()
