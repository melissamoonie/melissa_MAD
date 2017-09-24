//
//  ViewController.swift
//  lab1redo
//
//  Created by melissa on 9/24/17.
//  Copyright © 2017 melissa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var textBox: UILabel!
    @IBAction func changeImage(_ sender: UIButton) {
        if(sender.tag == 1){
            backgroundImage.image=UIImage(named: "backgroundimage")
            textBox.text="Radium Hot Springs Dive"
        }
        else if(sender.tag==2){
        backgroundImage.image=UIImage(named: "backgroundimage2")
        textBox.text="Colorful!"
    }
        else if(sender.tag==3){
            backgroundImage.image=UIImage(named: "backgroundimage")
            textBox.text="Black and White"
        }
    }
    @IBAction func changeImage2(_ sender: UIButton) {
        if(sender.tag == 1){
            backgroundImage.image=UIImage(named: "backgroundimage")
            textBox.text="Radium Hot Springs Dive"
        }
        else if(sender.tag==2){
            backgroundImage.image=UIImage(named: "backgroundimage2")
            textBox.text="Colorful!"
        }
        else if(sender.tag==3){
            backgroundImage.image=UIImage(named: "backgroundimage")
            textBox.text="Black and White"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

