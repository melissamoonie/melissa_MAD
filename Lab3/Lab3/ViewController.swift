//
//  ViewController.swift
//  Lab3
//
//  Created by melissa on 10/10/17.
//  Copyright © 2017 melissa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var checkAmount: UITextField!
    
//    @IBOutlet weak var total: UILabel!

    @IBOutlet weak var totalDuePerPerson: UILabel!
    @IBOutlet weak var tipDue: UILabel!
    @IBOutlet weak var totalDue: UILabel!
    @IBOutlet weak var tipPercent: UITextField!
    @IBOutlet weak var people: UITextField!

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }
    

    func updateTipTotals() {
        var amount:Float
        var pct:Float
        
        if checkAmount.text!.isEmpty {
            amount = 0.0
        } else {
            amount = Float(checkAmount.text!)!
        }
        if tipPercent.text!.isEmpty {
            pct = 0.0
        }
        else {
            pct = Float(tipPercent.text!)!/100
        }
        
        let numberOfPeople=Int(people.text!)
        let tip=amount*pct
        
        let total=amount+tip
        var personTotal : Float = 0.0
        if numberOfPeople != nil {
            if numberOfPeople! > 0 {
                personTotal = total / Float(numberOfPeople!)
            }else {
              
                let alert=UIAlertController(title: "Warning", message: "The number of people must be greater than 0", preferredStyle: UIAlertControllerStyle.alert)
              
                let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.cancel, handler: nil)
                alert.addAction(cancelAction)
                let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {action in
                    self.people.text="1"
                    self.updateTipTotals()
                })
                alert.addAction(okAction)
                present(alert, animated: true, completion: nil)
            }
        }
        
      
        let currencyFormat = NumberFormatter()
        currencyFormat.numberStyle=NumberFormatter.Style.currency
        tipDue.text=currencyFormat.string(from: NSNumber(value: tip))
        totalDue.text=currencyFormat.string(from: NSNumber(value: total))
        totalDuePerPerson.text=currencyFormat.string(from: NSNumber(value: personTotal))
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateTipTotals()
    }

    override func viewDidLoad() {
        checkAmount.delegate=self;
        tipPercent.delegate=self;
        people.delegate=self;
        super.viewDidLoad()
    }
    //    override func viewDidLoad() {
    //        super.viewDidLoad()
    //
    //    }
    
//    func updateTipTotals()
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    override func viewDidLoad(){
//        checkAmount.delegate=self;
//        tipPercent.delegate=self;
//        people.delegate=self;
//        super.viewDidLoad();
//    }

}

