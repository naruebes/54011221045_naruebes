// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let tutorialTeam = 56
let editorialTeam = 23
var totalTeam = tutorialTeam + editorialTeam

totalTeam += 1
let priceIntInferred = -19
let priceIntExplicit:Int = -19

let priceInferred = -19.99
let priceExplicit:Double = -19.99

let priceFloatInferred = -19.99
let priceFloatExplicit:Float = -19.99

let onSaleInferred = true
let onSaleExplicit:Bool = false

let nameInferred = "Whoopie Cushion"
let nameExplicit:String = "Whoopie Cushion"


var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs","Milk"]
//var shoppingListExplicit: [String] =["Eggs","Milk"]

var shoppingList = ["Eggs","Milk"]
println("The shopping list contains \(shoppingList.count) items.")
shoppingList.append("Flour")
shoppingList += ["Banking Powder"]
shoppingList += ["Chocolate", "Cheese", "Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
shoppingList[4...6] = ["bananas", "Apples"]
shoppingList

if(onSaleInferred){
    println("\(nameInferred) on sale for \(priceInferred)")
}else{
    println("\(nameInferred) at regular price: \(priceInferred)!")
}

let apples = shoppingList.removeLast()
let maplesyrup = shoppingList.removeAtIndex(0)

let possibleTipsInferred = [0.15, 0.18, 0.20]
let psosibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
var numberOfItem = possibleTipsInferred.count



let array: Array<Int> = [1, 2, 3, 4]
let dictionary: Dictionary<String, Int> = ["dog": 1, "elephnt": 2]

//[key 1: value 1, key 2: value 2, key 3: value 3]

var airports: [String: String] = ["TY0": "Tokyo", "DUB": "Dublin"]
if (airports.isEmpty){
    println("The airports dictionary is empty.")
}else{
    println("The airports dictionary is not empty.")

}
println("The airports dictionary contains \(airports.count) item.")

airports["LHR"] = "London"

airports["LHR"] = "London Heathrow"

if let oldValue = airports.updateValue("Dublin International", forKey: "DUB"){
    println("The old value for DUB was \(oldValue).")
}

airports["APL"] = "Apple International"

airports["APL"] = nil

if let removedValue = airports.removeValueForKey("DUB"){
    println("THe remove airport's name is \(removedValue).")
    
}else{
    println("The airports dictionary does not contain a value for DUB.")
}


var array1 = ["abc", "def", ""]

