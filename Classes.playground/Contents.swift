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
    // also you cannot add prefix "mutating in classes"
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



let bar = foo

foo.age
bar.age

bar.agechange()

foo.age
bar.age

// if we increased the bar age , now as it refers to foo , foo's age will also be chanaged they are linked
//because they are pointing to the same memory


//you cannot use binary operator "==" to compare to instace of classes
// you will have to use "==="
if foo === bar {
    "they point to same memory"
}else{
    "they point to different memories"
}



class vehicle{
    func goVroom()->String{
         return "vroom vroom"
    }
}

//inheritance , cannot be done in structures
class veh : vehicle{
    
}

let car = veh()

car.goVroom() // inheritance

class  Person1{
    private(set) var age : Int
    init(age:Int){
        self.age=age
    }
    func incAge()->Int{
        return self.age+1
    }
}

let man = Person1(age: 45)

man.age

//man.age += 1 this will result in error as age variable is set private
// which means it can only be modified eithin the class



