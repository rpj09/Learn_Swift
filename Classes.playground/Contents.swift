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
        self.age += 1
        return self.age    }
}

let man = Person1(age: 45)

man.age

//man.age += 1 this will result in error as age variable is set private
// which means it can only be modified eithin the class

//however you can use the function incAge() to increase the age

man.incAge()
man.age

class Tesla {
    let manufacturer  = "Tesla"
    let model:String
    let year:Int
    // any initializer which do not have convinience prefix , is a designated initializer
    // a class can have multiple convinience and designated initializers
    
    
    // if someone created the instace of tesla without passing any values this initializer will be called
    // it sets model to x and year to 2023
    init(){
        self.model = "X"
        self.year = 2023
    }
    
    // if someone passes both model and year this will be used
    init(model:String,year:Int){
        self.model = model
        self.year = year
        
    }
    convenience init(model:String){
        //this convenience initializer calls a designated intializer inside it
        //but a designated initializer cannot pass conviniece initalizer inside it
        self.init(model: model, year: 2023)
    }
}

class TeslaModelY: Tesla{
    // as the parent class also has init
    // to make init here
    // you have to write override
    override init() {
        super.init(model: "Y", year: 2023)
        //super.init(model: "Y") you cannot call this convineice initializer inside a designated initilizer
        
    }
}

let modelY = TeslaModelY()

modelY.manufacturer
modelY.model
modelY.year

let foobar = Person1(age: 20)

foobar.age

//we created a function with takes prameter as instance of Person2
// now this function can do anythin with the instance
func doSomeThing(with person : Person1){
    person.incAge()
}

doSomeThing(with: foobar)

foobar.age


class MyClass{
    init(){
        "initialized"
    }
    func dosomethin(){
        "Do Something"
    }
    //it is called when you class is going out of scope
    deinit{
        "Deinitialzed"
    }
}

let myclosure = {
    let mycls = MyClass()
    mycls.dosomethin()
}

myclosure()

