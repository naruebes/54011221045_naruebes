// Playground - noun: a place where people can play

import UIKit
class calculator{
    
    //สร้างตัวแปรสำหรับคลาส
    var input1: Int
    var input2: Int
    var op: String
    
    //กำหนดค่าเริ่มต้นให้คลาส
    init (i1:Int,i2:Int,o:String ){
        self.input1 = i1
        self.input2 = i2
        self.op = o
    
    }
    //ฟังชั้นการทำงาน
    func add() ->Int{
        var sum = input1+input2
        return sum
    }
    
    func minus() ->Int{
        var sum = input1-input2
        return sum
    }
    func multiply() ->Int{
        var sum = input1*input2
        return sum
    }
    func divide() ->Int{
        var sum = input1/input2
        return sum
    }
    
    //ฟังชั่นเชคการทำงาน + - * /
    func calculet() ->Int{
    
        if(op == "+"){
            var x = add()
            return x
        }
        else if(op == "-"){
            var x = minus()
            return x
        }
        else if(op == "*"){
            var x = multiply()
            return x
        }
        else if(op == "/"){
            var x = divide()
            return x
        }
        
        return 0
        
    }
    

}

//call class calculator
let cal = calculator(i1: 21, i2: 3, o: "")
cal.calculet()
