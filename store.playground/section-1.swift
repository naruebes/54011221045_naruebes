// Playground - noun: a place where people can play

import UIKit
class store {
    var product: [String] = ["เสื้อ", "กางเกง", "หมวก","นาฬิกา"]
    var price: [Int] = [250, 160 , 100 , 50]
//    var temp: String
//    var tprice : Int
    
    init() {
//        self.temp = p
//        self.tprice = s
    }
    
    func buyProduct(p: String, s:Int) -> String {
        var f = 0
        for (var i = 0; i < product.count; i++) {
            if (p == product[i]) {
                f = price[i]
            }
            
        }
        
        return "\(p) จำนวน \(s ) ราคา \(f*s) "
    }
    func add(Ap:String ,Apri: Int) ->String{
        
        product.append(Ap)
        price.append(Apri)
        return "complete"
    }

    
    func showPro() -> [String] {
        return product
    }
    
    func showPri() -> [Int] {
        return price
    }
}
let b = store()
b.buyProduct("เสื้อ",s: 2)

b.add("แหวน", Apri: 30000)
b.showPro()
b.showPri()
b.buyProduct("แหวน", s: 3)

