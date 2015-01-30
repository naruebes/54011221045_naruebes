class dicStore {
    var dic:[String : Int] = ["เสื้อ" : 250 ,"หมวก" : 150 ,"กางเกง" : 220 ,"รองเท้า" : 50 ]
    
    init(){
    
    }
    
    //เพิ่มค่าลงใน dic
    func aProduct (pro : String , pri : Int){
        dic[pro] = pri
    }
    func showPro() -> [String : Int] {
        return dic
    }
    
    // nil ลบค่าให้หายไป(ยกเลิกค่าทั้งหมด)
    func dProduct (pro : String){
        dic[pro] = nil
        
    }
    
    func eProduct(pro : String , pri : Int){
    
        dic[pro] = pri
    }
    
}
let n = dicStore()
n.dProduct("หมวก")
n.aProduct("แหวน", pri: 1   )
n.eProduct("แหวน", pri: 20 )
//n.showPro()
