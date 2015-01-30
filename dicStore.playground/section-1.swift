class dicStore {
    var dic:[String : Int] = ["เสื้อ" : 250 ,"หมวก" : 150 ,"กางเกง" : 220 ,"รองเท้า" : 50 ]
    
    init(){
    
    }
    func aProduct (pro : String , pri : Int){
        dic[pro] = pri
    }
    func showPro() -> [String : Int] {
        return dic
    }
}
let n = dicStore()
n.aProduct("แหวน", pri: 1   )
//n.showPro()
