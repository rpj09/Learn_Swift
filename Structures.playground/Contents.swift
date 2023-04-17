import Foundation


struct Person{
    let name:String
    let age:Int
}

let foo = Person(
    name: "rpj",
    age: 18
)

foo.name
foo.age

struct CommodoreComputer{
    let name: String
    let manufacturer =  "Commodore"
    
// this could also be done like this by initialising
//  let manufacturer:String
//    init(name: String){
//        self.name = name
//        self.manufacturer = "Commodore" // as manufacturer of commodore computer will always be "Commodore"
//    }
}

let c64 = CommodoreComputer(name: "C64")

c64.name
c64.manufacturer


struct Person2 {
    let firstname:String
    let lastname:String
    let fullname:String
    init(
        firstname:String,
        lastname:String
    ) {
        self.firstname = firstname
        self.lastname = lastname
        self.fullname = "\(firstname) \(lastname)"
    }
    
}

let bar = Person2(firstname: "Ripunjay", lastname: "Singh")

bar.firstname
bar.lastname
bar.fullname


// OR there is a better way of doing it change fullname type to var and specify the datatype i.e String and put the value ina function


struct Person3 {
    let firstname:String
    let lastname:String
    var fullname:String {
        "\(firstname) \(lastname)"
    }//like this

}

let baar = Person3(firstname: "rpj", lastname: "dev")

baar.fullname

struct car {
    var currentSpeed: Int
    mutating func drive(speed:Int){
        currentSpeed = speed
    }
}

let immutablecar = car(currentSpeed: 10)
//immutablecar.drive(speed: 20) will give error as it is assgnied as constant by let

var mutablecar = car(currentSpeed: 10)
mutablecar.drive(speed: 30)

mutablecar.currentSpeed


struct bike{
    let manufacturer: String
    let current_speed : Int
    
    func copy(speed:Int)->bike{
        bike(
            manufacturer: self.manufacturer,
            current_speed:speed
        )
    }
}

let bike1 = bike(manufacturer: "kawasaki", current_speed: 250)

let bike2 = bike1.copy(speed: 400)

bike1.current_speed
bike2.current_speed
