//
//  ViewController.swift
//  Examen_iOS
//
//  Created by Freddy Romero Espinosa on 08/10/19.
//  Copyright © 2019 Freddy Romero Espinosa. All rights reserved.
//

import UIKit

var dataForTitlesAndImagesInCells:[String:[String:String]]?

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return numberOfMainOptions()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "optionsCell", for: indexPath) as! OptionsInRegisterTableViewCell
        
        if let dataRowGeneral = dataForTitlesAndImagesInCells{
            if let dataRowGeneralTitle = dataRowGeneral["row"+String(indexPath.row+1)]?["title"] {
                cell.titleCell.text = dataRowGeneralTitle
            }
        }
                        
        return cell
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataForTitlesAndImagesInCells = getDataForMainOptionsModel()

        // Do any additional setup after loading the view.
            
    }
    
}

