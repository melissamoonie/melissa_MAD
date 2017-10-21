//
//  ViewControllerNew.swift
//  casaAppFinal
//
//  Created by melissa on 10/20/17.
//  Copyright © 2017 melissa. All rights reserved.
// help with data passing was provided by:
//code.tutsplus.com/tutorials/ios-sdk-passing-data-between-controllers-in-swift--cms-27151



import UIKit

class ViewControllerNew: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var totalBudget: UITextView!
    @IBOutlet weak var text2: UITextField!
    var passString = ""
    var intPassed = Int()
    var user=Favorite()
//    let intPassed = self.intPassed + 6
    @IBAction func unwindSegue(_ segue:UIStoryboardSegue){
    }
    @IBOutlet weak var totalNew: UILabel!
    @IBOutlet weak var totalNew2: UILabel!
    @IBOutlet weak var totalNew3: UILabel!
    override func viewDidLoad() {
        totalNew.text = passString + " Price with 1 Cerveza: \(intPassed + 5)"
        totalNew2.text = passString + " Price with 1 Margarita: \(intPassed + 7)"
        totalNew3.text = passString + " Price with 1 Pina Colada: \(intPassed + 6)"
        totalBudget.text = "Your Casa Bonita food budget is $\(intPassed)."
        
//        text1.delegate=self
//        text2.delegate=self
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { if segue.identifier == "doneFavs"{
//        let ViewController = segue.destination as! ViewController
//        if text1.text!.isEmpty == false{
//            ViewControllerNew.user.favBook=text1.text }
//        if text2.text!.isEmpty == false{ ViewController.user.favAuthor=text2.text
//        } }
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "doneFavs"{
            _ = segue.destination as! ViewControllerNew
            //check to see that text was entered in the textfields
            if text1.text!.isEmpty == false{
//                ViewControllerNew.user.favBook=text1.text
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
