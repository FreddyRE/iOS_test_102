//
//  ViewController.swift
//  Examen_iOS
//
//  Created by Freddy Romero Espinosa on 08/10/19.
//  Copyright © 2019 Freddy Romero Espinosa. All rights reserved.
//

import UIKit

var dataForTitlesAndImagesInCells:[optionsMainCells]?

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return numberOfMainOptions()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "optionsCell", for: indexPath) as! OptionsInRegisterTableViewCell
        
        if let dataRowGeneral = dataForTitlesAndImagesInCells{
            
            cell.titleCell.text = dataRowGeneral[indexPath.row].title
            
        }
            
        return cell
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(dataForTitlesAndImagesInCells?[indexPath.row].isSelected == false){
            tableView.cellForRow(at: indexPath)?.contentView.backgroundColor = UIColor.gray
            
            dataForTitlesAndImagesInCells?[indexPath.row].isSelected = true
            
        } else {
            tableView.cellForRow(at: indexPath)?.contentView.backgroundColor = UIColor.white
            
            dataForTitlesAndImagesInCells?[indexPath.row].isSelected = false
        }
    }
    
    @IBAction func goToSecondViewController(_ sender: UIButton) {
        
        if let cell = dataForTitlesAndImagesInCells {
            for itemCell in cell {
                if(itemCell.isSelected == true){
                    goToSecondView()
                    break
                } else if(itemCell.index == numberOfMainOptions()-1 && itemCell.isSelected == false ){
                    showSelectOneOptionMessage()
                }
            }
        }
        
        
    }
    
    func goToSecondView() {
        print("Siguiente")
    }
    func showSelectOneOptionMessage() {
        print("selecciona una")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataForTitlesAndImagesInCells = getDataForMainOptionsModel()
        
        // Do any additional setup after loading the view.
            
    }
    
}

