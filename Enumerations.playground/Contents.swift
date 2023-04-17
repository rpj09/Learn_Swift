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

