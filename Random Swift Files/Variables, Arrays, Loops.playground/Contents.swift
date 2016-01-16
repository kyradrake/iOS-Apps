//: Playground - noun: a place where people can play

import UIKit

//STRINGS
var str = "Hello, playground"

var name:String = "Kyra"

print("Hello, " + name)

//INTEGERS
var num = 4

num = num * 2

num /= 2

print("The value of num is \(num)")

//print("The value of num is " + num)       ERROR

print("The value of num is " + String(num))

//DOUBLE
var num2:Double = 2.3

//print(num2 * num)     ERROR

print(num2 * Double(num))

//BOOLEAN
var isTrue:Bool = true

//CHALLENGE
var n1:Double = 3.4
var n2:Int = 5
print("The product of \(n1) and \(n2) is \(n1 * Double(n2))")
print("The product of \(n1) and \(n2) is " + String(n1 * Double(n2)))

//ARRAYS
var array = [71, 32, 35, 14]

print(array[0])

array.append(54)        //appends element to end of the array

array.removeAtIndex(3)  //removes element at index
//returns element at given index, not the array

print(array)

array.sort()        //sorts array

//array.removeLast()  //removes last element

//array.removeAll()   //removes all elements

//ARRAY CHALLENGE
var array2 = [3.6, 12.2, 7.9]

array2.removeAtIndex(1)

array2.append(array2[0] + array2[1])

//DICTIONARY

var dictionary = ["coffee": "best drink ever", "computer": "something to play games on"]
//"coffee" and "computer" are the indexes, not 0,1,2,etc

print(dictionary["coffee"]!)

print(dictionary.count)

dictionary["pen"] = "writing tool"

dictionary.removeValueForKey("computer")
//returns value at key, not the dictionary

print(dictionary)

//DICTIONARY CHALLENEGE

var menu = ["fish": 12, "chicken": 15, "steak": 20]

var totalCost = menu["fish"]! + menu["chicken"]! + menu["steak"]!

print("The total cost is \(totalCost)")

//IF STATEMENTS

var playerAge = 20

if playerAge >= 18
{
    print("You can play!")
}
else
{
    print("You are too young")
}

var playerName = "Maggie"

if playerName == "Kyra"
{
    print("Hello, Kyra")
}
else
{
    print("Sorry, " + playerName + " you can't play")
}

if playerName == "Kyra" && playerAge >= 18
{
    print("You can play!")
}

if playerName == "Kyra" || playerName == "Maggie"
{
    print("Welcome " + playerName)
}

var isFemale = true

if isFemale
{
    print("You are a female")
}

//IF STATEMENT CHALLENGE

var username = "kyradrake"

var password = "kyr"

//attempt 1
if username == "kyradrake" && password == "kyra"
{
    print("Valid Username and Password")
}
else
{
    if username != "kyradrake"
    {
        print("Invalid Username")
    }
    if username != "kyra"
    {
        print("Invalid password")
    }
}

//attempt 2
if username == "kyradrake"
{
    print("Valid username")
}
else
{
    print("Invalid username")
}
if password == "kyra"
{
    print("Valid password")
}
else
{
    print("Invalid password")
}

//attempt 3
if username == "kyradrake" && password == "kyra"
{
    print("You're in!")
}
else if username != "kyradrake" && password != "kyra"
{
    print("Both your username and password are incorrect")
}
else if username != "kyradrake" && password == "kyra"
{
    print("Your username is incorrect")
}
else if username == "kyradrake" && password != "kyra"
{
    print("Your password is incorrect")
}
else
{
    print("You done dere fucked up")
}

//FOR LOOP

for var i = 1; i < 10; i++
{
    print(i)
}

var arr = [8, 5, 9, 12]

for x in arr
{
    print(x)
}

for (index, value) in arr.enumerate()
{
    arr[index] = value + 1
}

print(arr)

//FOR LOOP CHALLENGE

for var i = 2; i<=20; i += 2
{
    print(i)
}

var arr2 = [4, 8, 2, 14]

for var i = 0; i < arr2.count; i++
{
    arr2[i] = arr2[i]/2
}
print(arr2)

var arr3:[Double] = [5, 15, 8, 23]
// var arr3 = [5.0, 15.0, 8.0, 23.0]

for (index, value) in arr3.enumerate()
{
    arr3[index] = value/2
}
print(arr3)

//WHILE LOOP

var i = 1

while i < 10
{
    print(i)
    i++
}

var arr4 = [6, 4, 9, 3, 15, 7]

var k = 0

while k<arr4.count
{
    print(arr4[k])
    k++
}

//WHILE LOOP CHALLENGE

var j = 1

while j <= 10
{
    print(j*5)
    j++
}

var arr5 = [4, 9, 14, 3, 5, 12, 6]

var l = 0

while l<arr5.count
{
    arr5[l] = arr5[l] - 1
    l++
}
print(arr5)



























