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

//bibao
