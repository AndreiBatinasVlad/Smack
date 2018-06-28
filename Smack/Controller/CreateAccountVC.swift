//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Andrei Batinas on 28/06/2018.
//  Copyright © 2018 Jonny B. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender:nil)
    }
    
}
