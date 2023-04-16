import Foundation

// assiging age values to contant variables
let myage = 18
let your_age = 15


if myage > your_age {
    "I'm older than you"
}else if myage < your_age{
    "You are older than me"
}else {
    "we both are of same age"
}

let myMothersAge = myage+30
let doublemyage = myage*2

// 1. unary prefix
let foo = !true //prefixing a '!' which changes the value to False i.e not true

// 2. unary postfix
let name = Optional("rpj") // this can either contain no values or a value
type(of: name)
let unarypostfix = name!
type(of: unarypostfix)

// 3. binary infix
let result = 1 + 2
let strin = "foo" + " " + "bar"


let age = 30
//let message: String
//
//if age>=18{
//    message = "you are an adult"
//}else{
//    message = "you are not an adult"
//}
//message

//example if terniary operator
let message = age>=18  //condition
    ? "You are an adult"  // ? if condition is met
    : "you are not an adult" // : if condition is not met


