//
//  ContactList.swift
//  TeamLift3
//
//  Created by Meredith Van De Velde on 11/11/19.
//  Copyright © 2019 Meredith Van De Velde. All rights reserved.
//

import Foundation
import UIKit

class TableViewController : UITableViewController{
    
    @IBAction func logOut(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func logout(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    struct Objects {
        var sectionName : String!
        var sectionObjects : [String]!
    }
    
    var objectsArray = [Objects]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        objectsArray = [Objects(sectionName: "A", sectionObjects: ["Allison", "Anthony", "Amber"]), Objects(sectionName: "B", sectionObjects: ["Ben", "Brad"]), Objects(sectionName: "C", sectionObjects: ["Caroline", "Cory"]), Objects(sectionName: "D", sectionObjects: ["David"]), Objects(sectionName: "E", sectionObjects: ["Elizabeth", "Evan"]), Objects(sectionName: "F", sectionObjects: ["Folake", "Freddie"]),Objects(sectionName: "G", sectionObjects: ["Gary"]), Objects(sectionName: "H", sectionObjects: ["Harry", "Helen"]), Objects(sectionName: "I", sectionObjects: ["Ian", "Isabella", "Isaac"]), Objects(sectionName: "J", sectionObjects: ["Jack", "Jawa", "John"]), Objects(sectionName: "K", sectionObjects: ["Kat", "Kevin", "Kyle"]), Objects(sectionName: "L", sectionObjects: ["Lance", "Lisa"]), Objects(sectionName: "M", sectionObjects: ["Mary", "Matt"])]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")

        cell?.textLabel?.text = objectsArray[indexPath.section].sectionObjects[indexPath.row]
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objectsArray[section].sectionObjects.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return objectsArray.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return objectsArray[section].sectionName
    }
}
