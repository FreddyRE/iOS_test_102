//
//  cellsMainOptionsData.swift
//  Examen_iOS
//
//  Created by Freddy Romero Espinosa on 10/10/19.
//  Copyright © 2019 Freddy Romero Espinosa. All rights reserved.
//

import Foundation


var objMainOptions = [optionsMainCells]()

enum titlesCellsNames:String, CaseIterable {
    case camara = "Càmara"
    case foto = "Foto"
    case nombre_Completo = "Nombre Completo"
    case telefono = "Número Telefónico"
    case nacimiento = "Fecha de nacimiento"
    case sexo = "Sexo(M/F)"
    case color = "Color favorito"
    
}

func numberOfMainOptions() -> Int {
    return titlesCellsNames.allCases.count
}

func getDataForMainOptionsModel() -> [optionsMainCells]{
     
    for i in 0 ... titlesCellsNames.allCases.count - 1 {
        
      
        let instanceModelMainOptions = optionsMainCells.init(withTitle: titlesCellsNames.allCases[i].rawValue, withIndex: i)
        
        objMainOptions.append(instanceModelMainOptions)
        
    }
    return objMainOptions
    
}
