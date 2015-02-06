//
//  ViewController.swift
//  labCal
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sum : Int = 0

    
    @IBOutlet weak var lb1: UILabel!
    
    @IBOutlet weak var lb2: UILabel!
    
    @IBOutlet weak var lb3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btOne(sender: AnyObject) {
        sum += 1
        lb1.text = String(format: "%d", sum)
        
        
    }
 
    @IBAction func btTwo(sender: AnyObject) {
        sum += 2
        lb2.text = String(format: "%d", sum)
    }
    @IBAction func btThree(sender: AnyObject) {
        sum += 3
        lb3.text = String(format: "%d", sum)
    }
    @IBAction func reset(sender: AnyObject) {
        lb1.text = "0"
        lb2.text = "0"
        lb3.text = "0"
        sum = 0
    }
}

