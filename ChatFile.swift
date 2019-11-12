//
//  ChatFile.swift
//  TeamLift3
//
//  Created by Meredith Van De Velde on 11/11/19.
//  Copyright © 2019 Meredith Van De Velde. All rights reserved.
//

import Foundation
import UIKit

class ViewController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tbV: UITableView!
   
    var data = [
        ["Allison", "Anthony", "Amber", "Ben", "Brad", "Caroline", "Cory", "David", "Elizabeth"],["Robert, Jaime, Solomon", "Jake, Rod"] ]
    
    var p : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "CustomCell", bundle: nil)
        tbV.register(nib, forCellReuseIdentifier: "customCell")
        
        p = 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[p].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbV.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        let str = data[p][indexPath.row].components(separatedBy: " ")
        cell.customInit(text: str[1])
        return cell
    }
    
    @IBAction func switchCustomTableViewAction(_ sender: UISegmentedControl) {
        p = sender.selectedSegmentIndex
        tbV.reloadData()
    }
    
    
}
