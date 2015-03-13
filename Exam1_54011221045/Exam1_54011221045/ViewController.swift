//
//  ViewController.swift
//  Exam1_54011221045
//
//  Created by iStudents on 3/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    
        override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var subName: UITextField!
    @IBOutlet weak var midTotal: UITextField!
    @IBOutlet weak var mid: UITextField!
    @IBOutlet weak var ReputationTotal: UITextField!
    @IBOutlet weak var Reputation: UITextField!
    @IBOutlet weak var finalTotal: UITextField!
    @IBOutlet weak var final: UITextField!

    @IBOutlet weak var scoreTotal: UITextField!
    @IBOutlet weak var score: UITextField!
    @IBOutlet weak var grade: UITextField!
    
    
    
    @IBAction func reset(sender: AnyObject) {
        subName.text = ""
        midTotal.text = ""
        mid.text = ""
        ReputationTotal.text = ""
        Reputation.text = ""
        finalTotal.text = ""
        final.text = ""
        score.text = ""
        scoreTotal.text = ""
        grade.text = ""
    }
    
    @IBAction func submit(sender: UIButton) {
        scoreTotal.text = String(format: "%0.2f", sum ())
        score.text = String(format: "%0.2f", sumTotal ())
        grade.text = calculateGrade()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func sumTotal () ->Double {
        var mTotal = Double((midTotal.text as NSString).doubleValue)
        var rTotal = Double((ReputationTotal.text as NSString).doubleValue)
        var fTotal = Double((finalTotal.text as NSString).doubleValue)
        var m = Double((mid.text as NSString).doubleValue)
        var r = Double((Reputation.text as NSString).doubleValue)
        var f = Double((final.text as NSString).doubleValue)
        
        if (m <= mTotal && r <= rTotal && f <= fTotal){
            var sum = m + r + f
            return sum
            
        }
        
      return 0
        
        
    }
    
    func sum ()->Double {
        var mTotal = Double((midTotal.text as NSString).doubleValue)
        var rTotal = Double((ReputationTotal.text as NSString).doubleValue)
        var fTotal = Double((finalTotal.text as NSString).doubleValue)
        
        var sum = mTotal + rTotal + fTotal
        
        return sum
     
    }
    
    func calculateGrade ()->String{
        if(sumTotal() >= 80){
            var grade = "A"
            return grade
        }
        else if(74 <= sumTotal() || sumTotal() >= 79.99){
            var grade = "B+"
            return grade
        }
        else if(68 <= sumTotal() || sumTotal() >= 73.99){
            var grade = "B"
            return grade
        }
        else if(62 <= sumTotal() || sumTotal() >= 67.99){
            var grade = "C+"
            return grade
        }
        else if(56 <= sumTotal() || sumTotal() >= 61.99){
            var grade = "C"
            return grade
        }
        else if(50 <= sumTotal() || sumTotal() >= 55.99){
            var grade = "D+"
            return grade
        }
        else if(44 <= sumTotal() || sumTotal() >= 49.99){
            var grade = "D"
            return grade
        }
        else{
            var grade = "F"
            return grade
        }
     
    }


}

