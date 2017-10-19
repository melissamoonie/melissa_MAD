//
//  ViewController.swift
//  Melissa_Midterm
//
//  Created by melissa on 10/19/17.
//  Copyright © 2017 melissa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBAction func enterMiles(_ sender: UITextField) {
    }
    @IBOutlet weak var miles: UITextField!
    @IBOutlet weak var gasPurchase: UILabel!
    @IBOutlet weak var fontSizeLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var `switch`: UISwitch!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var gasLabel: UILabel!
    
    @IBOutlet weak var commuteTime: UILabel!
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { textField.resignFirstResponder()
        return true
    }
//    optional func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool
    
//    @IBAction func switchAction(_ sender: UISwitch) {
//    }
    @IBAction func change(_ sender: UISegmentedControl) {
        updateImage()

    }
    @IBOutlet weak var commuteLabel: UILabel!
    @IBAction func changeGas(_ sender: UISlider) {

        let fontSize=sender.value;
        fontSizeLabel.text=String(format: "%.0f", fontSize)

        }
    
    
    func updateTotals() {
        var amount:Float
   
        var distance:Float
        
        
//        if miles.text!.isEmpty {
//            amount= 0.0
//            distance = 0.0
//        }
//        else {
            amount = Float(miles.text!)!*0.6
            distance = Float(miles.text!)!/24
//        }

    }
    func updateImage(){
        var amount:Float
        
        var distance:Float
        
        amount = Float(miles.text!)!*0.6
        distance = Float(miles.text!)!/24
        
        
//        String(format: "%.2f", amount)
        
        if segmentControl.selectedSegmentIndex == 0 {
            if `switch`.isOn {
                gasPurchase.text=String(format: "%.2f", amount)
                commuteTime.text = String(format: "%.2f", distance)
 
            }
            
            imageView.image=UIImage(named: "car")
            
        }
        if segmentControl.selectedSegmentIndex == 1 {
            if `switch`.isOn {
                commuteTime.text = String(format: "%.2f", distance)
                gasPurchase.text="none"
             
            }

            imageView.image=UIImage(named: "bus")
            
        }
        if segmentControl.selectedSegmentIndex == 2 {
            if `switch`.isOn {
                gasPurchase.text="none"
                commuteTime.text = String(format: "%.2f", distance)
                
            }
            imageView.image=UIImage(named: "bike")
            
        }
    
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateTotals()
    }
    
    override func viewDidLoad() {
        miles.delegate=self as UITextFieldDelegate
      
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

