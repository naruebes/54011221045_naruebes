//
//  data.swift
//  customTabelView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
    func getData() -> Array<animal>{
        var tempArray = Array<animal>()
    
        let b1 = animal(bImage: UIImage(named: "bat.png"), bName: "bat")
        tempArray.append(b1)
        
        let b2 = animal(bImage: UIImage(named: "bird.png"), bName: "bird")
        tempArray.append(b2)
        
        let b3 = animal(bImage: UIImage(named: "cat.png"), bName: "cat")
        tempArray.append(b3)
        
        let b4 = animal(bImage: UIImage(named: "dog.png"), bName: "dog")
        tempArray.append(b4)
        
        return tempArray
        
    }
}
