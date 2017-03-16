//: Playground - noun: a place where people can play

import UIKit

// exp 1
let floatValue: Float = 4

// exp 2
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

// exp 3
let helloText = "Hi, mesird, the result is \(32.4 / 4)"

// demo 4
var shoppingList = ["book", "account", "shoes", "pants"]
shoppingList[1]

var occupations = ["Mesird": "iOS Dev", "Cassy": "Human Resource"]
occupations["Mesird"] = "Full-Stack Dev"

// demo 5
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello, no name"
}