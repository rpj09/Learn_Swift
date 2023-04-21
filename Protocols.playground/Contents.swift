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
