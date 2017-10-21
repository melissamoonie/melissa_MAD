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
      var budget: Float = 0.00
    @IBOutlet weak var total: UILabel!
    @IBAction func button(_ sender: UIButton) {
        
        let myVC = storyboard?.instantiateViewController(withIdentifier: "ViewControllerNew") as! ViewControllerNew
        myVC.passString = total.text!
        myVC.intPassed = myInt
        navigationController?.pushViewController(myVC, animated: true)

        
    }
    
    var user=Favorite()
    let num: Float = 1
    
    @IBAction func unwindSegue (_ segue:UIStoryboardSegue){
        total.text=user.favBook
        total2.text=user.favAuthor
    }
    @IBOutlet weak var drinkPrice: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var fontSizeLabel: UILabel!
    
//    var user=Favorite()
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
        myInt = Int(sender.value)
        var budget: Int = Int(sender.value)
        fontSizeLabel.text=String(format: "%.0f", fontSize)
        
        let currencyFormatter = NumberFormatter()
        currencyFormatter.numberStyle=NumberFormatter.Style.currency
        

        let roundedValue = round(sender.value)
        budget=Int(roundedValue)
        total2.text=currencyFormatter.string(from:NSNumber(value: budget))

//        var budget=sender.value
       
        
    }

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        myInt = Int(sender.value)
//       myInt = (Int(budget))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

