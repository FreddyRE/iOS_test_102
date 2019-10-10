//
//  cellsMainOptionsData.swift
//  Examen_iOS
//
//  Created by Freddy Romero Espinosa on 10/10/19.
//  Copyright © 2019 Freddy Romero Espinosa. All rights reserved.
//

import Foundation

typealias dictionaryOfRowsInCells = [String:[String:String]]

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

func getDataForMainOptionsModel() -> [String:[String:String]]{
    
    var dictionaryTempTitles = [String:[String:String]]()
 
    for i in 0 ... titlesCellsNames.allCases.count - 1 {
        
        dictionaryTempTitles["row"+String(i+1)] = ["title":titlesCellsNames.allCases[i].rawValue]
    }
    
    return dictionaryTempTitles
    
}
