//
//  ViewControllerNew.swift
//  casaAppFinal
//
//  Created by melissa on 10/20/17.
//  Copyright © 2017 melissa. All rights reserved.
//

import UIKit

class ViewControllerNew: UIViewController, UITextFieldDelegate {
    
    var passString = ""
    var intPassed = Int()

    @IBOutlet weak var totalNew: UILabel!
    override func viewDidLoad() {
        totalNew.text = passString + " my Int: \(intPassed)"
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
