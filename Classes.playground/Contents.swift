import Foundation

//In struct we dont need initializers
struct Person{
    var age : Int
    var Name : String
}

//but in classes we need initializers
class Persons{
    var age : Int
    var Name : String
    init(
        age:Int,
        Name:String
    ){
        self.Name = Name
        self.age = age
    }
    func agechange(){
        self.age+=1
    }
    
}

let foo = Persons(age: 56, Name: "xyz")

foo.Name
foo.age

foo.agechange()
foo.age // here foo is a contant instance of class but still the the value changed

// Int classes event if the instace is stored in a constant variable , the class can change the value internally
// but in structures it cant be done , to do so you need to assign the instace to a variable instance i.e "var" not "let"





