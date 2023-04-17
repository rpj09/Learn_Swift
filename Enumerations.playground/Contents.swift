import Foundation


enum Animals {
    case cat
    case dog
    case rabbit
}

let caty = Animals.dog

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
