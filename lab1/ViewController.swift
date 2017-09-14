//
//  ViewController.swift
//  lab1
//
//  Created by melissa on 9/14/17.
//  Copyright © 2017 melissa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func choosePic(_ sender: UIButton) {
        if sender.tag == 1{
            diveImage.image=UIImage(named: "mad3.png")
        }
        else if sender.tag == 2{
            diveImage.image=UIImage(named: "mad2.png")
        }
    }
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var diveImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

