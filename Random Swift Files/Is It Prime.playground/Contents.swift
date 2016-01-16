//: Playground - noun: a place where people can play

import UIKit

//number entered by the user
var number = 113

var prime = true

for var i = 2; i<number; i++
{
    if(number % i == 0)
    {
        prime = false
        break
    }
}


