import Foundation

protocol pers{
    func add()
}

struct Animal:pers{
    func add(){
            "adding animal"
    }
}

struct Person:pers{
    func add(){
            "adding person"
    }
}

let dog = Animal()
dog.add()

let human = Person()
human.add()


protocol CanJump{
    func jump()
}

extension CanJump{
    func jump(){
        "Jumping..."
    }
}

struct cat : CanJump {
    
}

let can = cat()

can.jump()


protocol HasName{
    var name:String {get} //fancy way of writing let name:String
    var age:Int {get set} // could have simply wrote var age:Int
    //but that how we write in protocols
    // get give you access to retrive the data
    // set give you acess to set the data
}

extension HasName{
    func describeme()->String{
        "Your name is \(name) and you are \(age) years old."
    }
    
    mutating func increaseage(){
        self.age += 1
        
    }
}

struct Dog:HasName{
    let name: String
    var age: Int
}


var woof = Dog(name: "woof", age: 4)

woof.name
woof.age

woof.age += 1

woof.age


woof.describeme()

woof.increaseage()

woof.age

protocol Vehicle {
    var speed:Int {get set}
    mutating func increaseSpeed(by value:Int)
}

extension Vehicle{
    mutating func increaseSpeed(
        by value:Int
    ){
        self.speed += value
    }
}

struct Bike:Vehicle{
    var speed:Int
    init(){
        self.speed=0
    }
    
    //could also have done var speed:Int = 0
}


var bike = Bike()

bike.speed
bike.increaseSpeed(by: 10)
bike.speed


func describe(obj:Any)->String{
    if obj is Vehicle{
        return "vehicle conform to vehicle protocol"
    }else{
        return "it does not conforms to vehicle protcol"
    }
}

describe(obj: bike)


func increaseSpeedOfVehicle(obj:Any){
    if var vehicle = obj as? Vehicle{
        // here it is not changing the actual value of instance
        // it is creating a new varible and changing its value
        // if it has been a instance of class instad of a struct
        // then it would have been updated the value of instace only
        vehicle.speed
        vehicle.increaseSpeed(by:10)
        vehicle.speed
        
        
    }else{
        "This was not a vehicle"
    }
}

increaseSpeedOfVehicle(obj: bike)
//the value is not changing beacue the function is creating copy of instance and changing the value of copy created
// if this would have been instace of class it would the updated 
bike.speed
