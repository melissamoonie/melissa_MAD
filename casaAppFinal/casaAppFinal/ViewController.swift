//
//  ViewController.swift
//  casaAppFinal
//
//  Created by melissa on 10/20/17.
//  Copyright © 2017 melissa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var mainText: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBOutlet weak var total2: UILabel!
    var myInt = Int()
    
    @IBOutlet weak var total: UILabel!
    @IBAction func button(_ sender: UIButton) {
        
        let myVC = storyboard?.instantiateViewController(withIdentifier: "ViewControllerNew") as! ViewControllerNew
        myVC.passString = total.text!
        myVC.intPassed = myInt
        navigationController?.pushViewController(myVC, animated: true)

        
    }
    @IBOutlet weak var drinkPrice: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var fontSizeLabel: UILabel!
    var budget: Float = 0.00
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        if segmentControl.selectedSegmentIndex == 0 {
            
            
            imageView.image=UIImage(named:"beer.jpg")
            drinkPrice.text=String("$4.99")
            
        }
        if segmentControl.selectedSegmentIndex == 1 {
            
            imageView.image=UIImage(named: "marg.jpg" )
            drinkPrice.text=String("$6.99")
            
        }
        if segmentControl.selectedSegmentIndex == 2 {
            
            imageView.image=UIImage(named: "pina.jpg" )
            drinkPrice.text=String("$6.49")
            
        }
        
    }
    @IBAction func budget(_ sender: UISlider) {
        let fontSize=sender.value;
        fontSizeLabel.text=String(format: "%.0f", fontSize)
    }

        
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myInt = 10
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

