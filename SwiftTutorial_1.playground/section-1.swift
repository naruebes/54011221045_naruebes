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
//shoppingList[0...3] = ["bananas", "Apples"]
shoppingList

let possibleTipsInferred = [0.15, 0.18, 0.20]
let psosibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
var numberOfItem = possibleTipsInferred.count

var shoppingList: [String] = ["Eggs","Milk"]

