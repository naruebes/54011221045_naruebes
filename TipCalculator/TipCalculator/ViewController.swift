//
//  ViewController.swift
//  TipCalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
let tipCal = tipCaculatorModel(total: 33.25, taxPct: 0.06)
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var TotalTextField: UITextField!
    @IBOutlet weak var taxPctSlider: UISlider!
    @IBOutlet weak var taxPctLabel: UILabel!
    @IBOutlet weak var resultsTextView: UITextView!
    @IBAction func calculatedTapped(sender: AnyObject) {
        //1
        tipCal.total = Double((TotalTextField.text as NSString).doubleValue)
        //2
        let possibleTips = tipCal.returnPossibleTips()
        var results = ""
        //3
        for (tipPct, tipValue) in possibleTips {
        //4
            results += "\(tipPct)%: \(tipValue)\n"
        }
        //5
        resultsTextView.text = results
        
    }
    
    @IBAction func taxPercentageChanged(sender: AnyObject) {
        tipCal.taxPct = Double(taxPctSlider.value) / 100.0
        refreshUI()
    }
    
    @IBAction func viewTapped(sender: AnyObject) {
        TotalTextField.resignFirstResponder()
    }
    
    func refreshUI() {
        TotalTextField.text = String(format: "%0.2f", tipCal.total)
        taxPctSlider.value = Float(tipCal.taxPct) * 100.0
        taxPctLabel.text = "tax Percentage (\(Int(taxPctSlider.value))%)"
        resultsTextView.text = ""
    }
    
}

