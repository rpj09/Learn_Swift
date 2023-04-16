import Foundation

let myname = "Ripunjay" // value is immutable in let

let yourname = "xyz"

var names = [
    myname,
    yourname
    
]// here value is mutable

names.append("manasvi")// appending data to variable names
names.append("Kunal")

let names2 = [
    myname,
    yourname
    
]// here value is immutable

var names2_copy = names2 // this creates a mutable copy of names2 in variable names2_copy

names2_copy.append("rpj")
names2_copy.append("rpjdev")//appending strings to array names2_copy

names2
names2_copy
