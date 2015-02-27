//
//  animal.swift
//  customTabelView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import Foundation
import UIKit

struct animal {
    var animalImage: UIImage
    var animalName: String
    
    init(bImage: UIImage, bName: String){
        self.animalImage = bImage
        self.animalName = bName
    }
}