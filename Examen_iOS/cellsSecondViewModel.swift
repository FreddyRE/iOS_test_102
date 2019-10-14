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
            let resview = optionCamera().getImage(fromFileName: cameraDataSVUI["imgIcon"] as! String)
            resview.center = inCell.center
            inCell.addSubview(resview)
        case String(describing: titlesCellsNames.foto):
            inCell.imageView?.image = dataLoaded1
        case String(describing: titlesCellsNames.nombre_Completo):
            let res = optionTextInput().getTxtField()
            res.center.x = inCell.center.x
            res.center.y = inCell.center.y
            inCell.addSubview(res)
        case String(describing: titlesCellsNames.telefono):
            let res = optionTextInput().getTxtField()
            res.center.x = inCell.center.x
            res.center.y = inCell.center.y
            inCell.addSubview(res)
            
        case String(describing: titlesCellsNames.nacimiento):
            let res: UIDatePicker = optionDatePicker().getPicker()
            inCell.addSubview(res)
        default:
            print("Aun no agregado")
        }
    }
}



struct optionCamera {
    
    let img : UIImageView = UIImageView(frame: CGRect(x: cameraDataSVUI["positionX"] as! Int,y: cameraDataSVUI["positionY"] as! Int,width: cameraDataSVUI["width"] as! Int,height: cameraDataSVUI["height"] as! Int))
    
    func getImage(fromFileName:String)-> UIImageView{
        self.img.image = UIImage(named: fromFileName)
        return self.img
    }
}

struct optionTextInput {
    let txtInput: UITextField =  UITextField(frame: CGRect(x: 0, y: 0, width: 250, height: 50))

    
    func getTxtField()-> UITextField{
        self.txtInput.borderStyle = .line
        return self.txtInput
    }
}

struct optionDatePicker {
    let datePicker: UIDatePicker = UIDatePicker()
    
    func getPicker() -> UIDatePicker {
        self.datePicker.frame = CGRect(x: 10, y: 50, width: UIScreen.main.bounds.width, height: 100)
        self.datePicker.timeZone = NSTimeZone.local
        return self.datePicker
    }
   
}


