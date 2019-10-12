//
//  cellsMainOptionsModel.swift
//  Examen_iOS
//
//  Created by Freddy Romero Espinosa on 09/10/19.
//  Copyright © 2019 Freddy Romero Espinosa. All rights reserved.
//

import Foundation
import UIKit

struct optionsMainCells {
    var title: String
    var titleDescription: String
    var photo: String = "" //pending UI Photo in Cells only for aesthetics
    var isSelected: Bool = false
    var index:Int
    
    init(withTitle:String, withIndex:Int, titleDesc:String) {
        self.title = withTitle
        self.index = withIndex
        self.titleDescription = titleDesc
    }
    
}



