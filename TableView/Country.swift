//
//  Country.swift
//  TableView
//
//  Created by MANBEER KAUR on 2020-03-05.
//  Copyright © 2020 MANBEER KAUR. All rights reserved.
//

import Foundation
import UIKit
class Country {
    var name : String
    var capital:String
    var flag : UIImage
    init(name:String,capital:String,flag:UIImage) {
        self.name = name
        self.capital = capital
        self.flag = flag
    }
}
