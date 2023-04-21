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

