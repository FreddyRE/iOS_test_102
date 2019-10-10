//
//  cellsMainOptionsModel.swift
//  Examen_iOS
//
//  Created by Freddy Romero Espinosa on 09/10/19.
//  Copyright © 2019 Freddy Romero Espinosa. All rights reserved.
//

import Foundation


struct optionsMainCells {
    var title: String
    var photo: String
    var isSelected: Bool = false
    
    init(withTitle:String, photoPath:String) {
        self.title = withTitle
        self.photo = photoPath
    }
    
}





