import Foundation

let age = 120
let message: String

// && stands for and , || stands for or
if age>=18 && age<100{
    message = "you are an adult"
}else if age==0{
    message = "you are just born"
    
}else if age>100{
    message = "you are :)"
}else{
    message = "you are not an adult"
}
message

let myname  = "rpj"
let yourname = "rpjdev"
let myage = 1
let yourage = 2

if (myname == "rpj" && myage == 18) || (yourname=="rpjdev" && yourage==20){
    "you are awesome"
}else{
    "something went wrong"
}

