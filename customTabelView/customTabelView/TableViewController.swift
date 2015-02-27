//
//  TableViewController.swift
//  customTabelView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    var listData = Array<animal>()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        listData = data().getData()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return listData.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as TableViewCell

        cell.customImageView.image = listData[indexPath.row].animalImage
        cell.customLabel.text = listData[indexPath.row].animalName

        return cell
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let msg = "You selected : \(listData[indexPath.row].animalName)"
        let alert = UIAlertController(title: "You Selection", message: msg, preferredStyle: .Alert)
        let okButton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(okButton)
        self.presentViewController(alert, animated: true, completion: nil)
    }
   

}
