//
//  LoginView.swift
//  TeamLift3
//
//  Created by Meredith Van De Velde on 11/11/19.
//  Copyright © 2019 Meredith Van De Velde. All rights reserved.
//

import Foundation
import UIKit

class LoginView: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logTap(_ sender: Any) {
        let mainTabController = storyboard?.instantiateViewController(withIdentifier: "MainTabController") as! MainTabController
        mainTabController.selectedViewController = mainTabController.viewControllers?[2]
        
        
        present(mainTabController, animated: true, completion: nil)
    }
    
}
