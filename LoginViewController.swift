//
//  ViewController.swift
//  TeamLift3
//
//  Created by Meredith Van De Velde on 11/10/19.
//  Copyright © 2019 Meredith Van De Velde. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
   
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //login.backgroundColor = UIColor.white
       // login.layer.cornerRadius = 7
        
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        let mainTabController = storyboard?.instantiateViewController(withIdentifier: "MainTabController") as! MainTabController
        present(mainTabController, animated: true, completion: nil)
    }
    


}

