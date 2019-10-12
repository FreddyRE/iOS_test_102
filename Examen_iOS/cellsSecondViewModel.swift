//
//  cellsSecondViewModel.swift
//  Examen_iOS
//
//  Created by Freddy Romero Espinosa on 12/10/19.
//  Copyright © 2019 Freddy Romero Espinosa. All rights reserved.
//

import Foundation
import UIKit

class optionsDetailCells{
    var title:String
    var titleDescription:String
    init(withTitle:String, titleDesc:String){
        self.title = withTitle
        self.titleDescription = titleDesc
    }
    
    func getSubViews(inCell:UITableViewCell){
        switch self.title {
        case String(describing: titlesCellsNames.camara):
            let resview = optionPhoto().getImage(fromFileName: dataParamsForUIInSecondView.camara.rawValue)
            resview.center = inCell.center
            inCell.addSubview(resview)
        default:
            print("Aun no agregado")
        }
    }
}

class optionPhoto {
    
    let img : UIImageView = UIImageView(frame: CGRect(x: 0,y: 0,width: 50,height: 50))
    
    func getImage(fromFileName:String)-> UIImageView{
        self.img.image = UIImage(named: fromFileName)
        return self.img
    }
}



