import Foundation


enum Animals {
    case cat
    case dog
    case rabbit
}

let caty = Animals.cat

caty


if caty == Animals.cat {
    "This is a cat"
}else if caty == Animals.dog {
    "This is a dog"
}else if caty == Animals.rabbit{
    "This is a rabbit"
}
