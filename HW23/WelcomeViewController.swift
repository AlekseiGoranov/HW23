//
//  WelcomeViewController.swift
//  HW23
//
//  Created by Алексей Горанов on 03.02.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    
  
    @IBOutlet weak var UserNameLabel: UILabel!
    
    var userName: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UserNameLabel.text = userName
    }

   
    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
    }
  

}
