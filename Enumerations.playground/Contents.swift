import Foundation


enum Animals {
    case cat
    case dog
    case rabbit
}

let caty = Animals.rabbit

caty


if caty == Animals.cat {
    "This is a cat"
}else if caty == Animals.dog {
    "This is a dog"
}else if caty == Animals.rabbit{
    "This is a rabbit"
}


switch caty{
case .cat:
    "This is a cat"
    break
case .dog:
    "This is a dog"
    break
case .rabbit:
    "This is a rabbit"
    break
}
//you have to cover all the cases in a switch case
//if you dont want to do so you can use deafult for eg.

switch caty{
case .cat:
    "This is a cat"
    break
default: // this is kindoff works similar to "else " in "if-else"
    "this is nothin"
    break
}


func describeAnimal(_ animal:Animals){
    
    switch caty{
    case .cat:
        "This is a cat"
        break
    default: // this is kindoff works similar to "else " in "if-else"
        "this is nothin"
        break
    }
    
}

describeAnimal(Animals.dog)


enum Shortcut {
    case fileOrFolder(path:URL,name:String)
    case wwwURL(path:URL)
    case song(artist:String,songname:String)
}

 let wwwApple = Shortcut.wwwURL(path: URL(string:"www.apple.com")! )


switch wwwApple{
    
case .fileOrFolder(path: let path,name: let name):
    path
    name
    break
case .wwwURL(path: let path):
    path
    break
case .song(artist: let artist,songname: let songname):
    artist
    songname
}

// the above switch case can also be written like this
//removed the parameters name before them , also removed the let inside the parameter bracket
// and have put it before case value

switch wwwApple{
// we are simly unpacking/extracting values of enum instance wwwApple
case let .fileOrFolder(path,name):
    path
    name
    break
case let .wwwURL(path):
    path
    break
case let .song(artist,songname):
    artist
    songname
}


// there are other ways to extract the values , using if case statements

if case let .wwwURL(path) = wwwApple{
    path //this will return the value of case, it basically assgined the path to "path" varibale and printed it.
    
}


let songna = Shortcut.song(artist: "Symphony X", songname: "Without you")

if case let .song(artist,songname) = songna{
    artist
    songname // basically unpacking the values of enum
}


enum vehicle{
    case Car(manufacturer:String,model:String)
    case Bike(manufacturer:String,year:Int)
    
}



let car1 = vehicle.Car(manufacturer: "Tesla", model: "x")
let bike1 = vehicle.Bike(manufacturer: "Harley", year:1987)



// grabbing manufracturer out of car1 and bike1

switch bike1{
case let .Bike(manufacturer,_):
    manufacturer
case let .Car(manufacturer,_):
    manufacturer
    
}
switch car1{
case let .Bike(manufacturer,_):
    manufacturer
case let .Car(manufacturer,_):
    manufacturer
    
}

//instead of doing this we can create a funciton for this to reduce number of line and make it more readable
 
func getManufacturer(from vehicle : vehicle)->String{
    switch vehicle{
    case let .Bike(manufacturer,_):
        return manufacturer
    case let .Car(manufacturer,_):
        return manufacturer
        
    }
}

// the above function parameter has external name from and internal name vehicle which is of type vehicle(enum)
 


getManufacturer(from: car1)
getManufacturer(from: bike1)


// now to make it more better we can do this
//putting the fucntion inside the enum
// and instead of switching to vehicle we can switch to self

enum vehicles{
    case Car(manufacturer:String,model:String)
    case Bike(manufacturer:String,year:Int)
    func getManufacturer(/*from vehicle : vehicle*/)->String{
        switch self {//vehicle
        case let .Bike(manufacturer,_):
            return manufacturer
        case let .Car(manufacturer,_):
            return manufacturer
            
        }
    }
    
}

let car2 = vehicles.Car(manufacturer: "Tesla", model: "x")
let bike2 = vehicles.Bike(manufacturer: "Harley", year:1987)

//now they can be called as a fuction
car2.getManufacturer()
bike2.getManufacturer()


// we can make it more better


enum vehicles1{
    case Car(manufacturer:String,model:String)
    case Bike(manufacturer:String,year:Int)
    var Manufacturer:String{
        switch self {
        case let .Bike(manufacturer,_) , let .Car(manufacturer,_):
            return manufacturer
            
        }
    }
    
}

let car3 = vehicles1.Car(manufacturer: "Tesla", model: "x")
let bike3 = vehicles1.Bike(manufacturer: "Harley", year:1987)

//they can be called as a method
car3.Manufacturer
bike3.Manufacturer



//assigning raw values to enum cases

enum familyMembers:String{
    case Father =  "Dad"
    case Mother = "Mom"
    case Brother = "Brother"
    case Sister = "Sis"
}

familyMembers.Brother.rawValue
familyMembers.Father.rawValue
familyMembers.Mother.rawValue
familyMembers.Sister.rawValue

enum emoji:String,CaseIterable{
    case blush = "🥰"
    case sad = "😞"
}
//returns all cases raw value a array
emoji.allCases

//returns all cases raw value as a array
emoji.allCases.map(\.rawValue)


if let blush = emoji(rawValue: "🥰"){
    "Found the blush emoji"
    blush
}else{
    "there is no such emoji"
}
