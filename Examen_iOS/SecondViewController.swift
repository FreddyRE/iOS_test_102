//
//  SecondViewController.swift
//  Examen_iOS
//
//  Created by Freddy Romero Espinosa on 10/10/19.
//  Copyright © 2019 Freddy Romero Espinosa. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var refreshCtrl: UIRefreshControl!
    var tableData:[AnyObject]!
    var task: URLSessionDownloadTask!
    var session: URLSession!
    var cache:NSCache<AnyObject, AnyObject>!
    
    
    
    
    
    var itemsSelectedFromFirstView = [optionsDetailCells]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsSelectedFromFirstView.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "optionsCell2View", for: indexPath) as! inputsSecondViewTableViewCell
        cell.titleCell2View.text = itemsSelectedFromFirstView[indexPath.row].titleDescription
        
        itemsSelectedFromFirstView[indexPath.row].getSubViews(inCell: cell)
       
        return cell
    }
    
    
    var dataFromFirstVC:[optionsMainCells]?
    
    
    @IBAction func goBackToMainViewController(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func verifyCellsSelected() {

        if let firstData = dataFromFirstVC {
            
            for index in 0...firstData.count-1{
                
                if(firstData[index].isSelected){
                    let newSelection = optionsDetailCells.init(withTitle: firstData[index].title, titleDesc: firstData[index].titleDescription )
                    itemsSelectedFromFirstView.append(newSelection)
                }
                
            }
        }
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        verifyCellsSelected()
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
