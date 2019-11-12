//
//  ChatList.swift
//  TeamLift3
//
//  Created by Meredith Van De Velde on 11/11/19.
//  Copyright © 2019 Meredith Van De Velde. All rights reserved.
//

import Foundation
import UIKit

class ChatList : UIViewController{
    
    let segmentedControl: UISegmentedControl = {
        let sc = UISegmentedControl(items: ["Individual", "Group"])
        sc.selectedSegmentIndex = 0
        return sc
    }()
    
    let tableView = UITableView(frame: .zero, style: .plain)
    
    @IBAction func logOut(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func logout(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stackView = UIStackView(arrangedSubviews: [segmentedControl, tableView])
        stackView.axis = .vertical
        
        view.addSubview(stackView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
