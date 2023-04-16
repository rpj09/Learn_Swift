import Foundation

func noArgumentsAndNoReturnValue(){
    "i dont know what i am doing"
}
noArgumentsAndNoReturnValue()

func plusTwo(value: Int){
    let newValue = value+2
}

plusTwo(value: 3)

// here -> Int is the return type
func newPlusTwo(value: Int) -> Int{
    return value+2
}

newPlusTwo(value: 7)

func customAdd(
    value1: Int,
    value2: Int
) -> Int {

    value1+value2 // it can be wriiten without "return" it will do the same thing
    
}

customAdd(value1: 45, value2: 40)
 
// in "_ lhs" _ is the external name and lhs is the internal name
// external name is name which is pass/referace as arguments while calling the function
// internal name are names using which parameters are referaced inside the function
// when we put _ as external name we dont have to give any external name while calling the function we can diretly call the function
@discardableResult // this means we dont have to neccesarily use the value of this fuction , we can just simply store the value and do nothing
func lhsrhs(
    _ lhs: Int,
    _ rhs: Int
) -> Int{
    lhs - rhs
}
// here the arguments lhs and rhs are externally not named but internally they are called lhs,rhs
// as we have specified _ lhs we dont have to pass names as aurguments while calling the function we can directly call the function

let a = lhsrhs(24,12) // as earlier we did not do lhsrhs(lhs:24,rhs:24) we directly passed the value

// here we have assigned value of func lhsrhs into "a" but havent used it anywhere
// but in playgrounds we dont get any error
// but in .swift code you have to either use it anywhere or write @discardableResult before a function which you are calling


func doSomethinComplicated(
    with value: Int
    
) -> Int {
    func mainLogic(value:Int)->Int{
        value+3
    }
    return mainLogic(value: value+3)
}

doSomethinComplicated(with: 45)
// (45+3)+3 = 51

func fullName(
    firstname: String = "Foo",
    lastname: String = "bar"
) -> String {
    "\(firstname) \(lastname) "
}

fullName(firstname: "Ripunjay",lastname: "Singh")
fullName()
