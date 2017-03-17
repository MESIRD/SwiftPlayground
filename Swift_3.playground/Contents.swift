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

// demo 4 - array and dictionary
var shoppingList = ["book", "account", "shoes", "pants"]
shoppingList[1]

var occupations = ["Mesird": "iOS Dev", "Cassy": "Human Resource"]
occupations["Mesird"] = "Full-Stack Dev"

// demo 5 - optional variable
var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello, no name"
}

// demo 6 - switch
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is is a spicy \(x)")
default:
    print("Everything tastes good in soup.")
}

// exp 7 - for
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]

var largest = 0
var largestKind: String? = nil
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largestKind = kind
            largest = number
        }
    }
}
print("The largest kind is \(largestKind!) and the largest number is \(largest)")

// demo 8 - loop
var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

var total = 0
for i in 1...2 {
    total += i
}
print(total)

// exp 9 - function
func greet(person: String, lunch: String) -> String {
    return "Hello \(person), today we eat \(lunch) at noon"
}
greet(person: "mesird", lunch: "pie")

// demo 10 - function - no argument label
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("Mesird", on: "Wednesday")

// demo 11 - Tuple return type
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

// demo 12 - a variable number of arguments
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(numbers: 32, 53, 153)



