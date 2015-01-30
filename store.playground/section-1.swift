// Playground - noun: a place where people can play

import UIKit
class store {
    let product: [String] = ["เสื้อ", "กางเกง", "หมวก","นาฬิกา"]
    let price: [Int] = [250, 160 , 100 , 50]
    var temp: String
    var tprice : Int
    
    init(p: String, s:Int) {
        self.temp = p
        self.tprice = s
    }
    
    func buyProduct() -> Int {
        var f = 0
        for (var i = 0; i < product.count; i++) {
            if (temp == product[i]) {
                f = price[i]
            }
        }
        
        return f*tprice
    }
}
let b = store(p: "เสื้อ",s: 2)
b.buyProduct()
