import Foundation

let add : (Int,Int)->Int
= {
    (lhs:Int,rhs:Int)->Int in
    lhs+rhs
}

add(34, 23)


func customAdd(
    _ lhs: Int,
    _ rhs: Int,
    using function : (Int,Int)->Int
)->Int{
    function(lhs,rhs)
}


customAdd(34, 54, using: {
    (lhs:Int,rhs:Int)->Int in
    lhs+rhs}
)

// as the fuction has closure as trailing parameter it can be passed like

customAdd(22, 55){(lhs:Int,rhs:Int)->Int in lhs+rhs}

// now here the closure function knows that it has to take two int parameter and return int so
//we could remove int from the value assignment
customAdd(21, 45){(lhs,rhs) in lhs+rhs}

// we have cleaned the code but we have provided less data to compiler and in large projects the less data we provide
// to compiler the more time it takes

// to make the code more short we can also do this
customAdd(21, 45){ $0 + $1 }

// $0 refers o index of arguments passed i.e lhs and $1 refers to rhs i.e 1st index
//lets take one more example
let addd : (Int,Int)->Int
= {
   $0 + $1
}

addd(45,55)


let ages = [34,23,5,23,22]

ages.sorted(by: {(lhs:Int,rhs:Int)->Bool in lhs<rhs})
ages.sorted(by: > )
ages.sorted(by: < )


func add_10(_ value:Int)->Int{
    return value+10
}
func add_20(value:Int)->Int{
    return value+20
}

func doaddition(
    on value : Int,
    using function : (Int)->Int
)->Int{
    return function(value)
}

doaddition(on: 20){
    (value:Int)->Int in value+30
}

doaddition(on: 20, using: add_10(_:))// here doaddition funtion is passing 20 to add_10 function and add_10 is returning the final value

doaddition(on: 20, using: add_20(value:))// here doaddition funtion is passing 20 to add_20 function and add_20 is returning the final value
