//
//  ViewController.swift
//  CasaBonitaApp
//
//  Created by melissa on 9/30/17.
//  Copyright © 2017 melissa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var field1: UITextField!

    @IBOutlet weak var field2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        
//        textField.resignFirstResponder()
//        return true
//    }
    @IBAction func one(_ sender: UIButton) {
    }
    @IBAction func two(_ sender: UIButton) {
    }
    @IBAction func three(_ sender: UIButton) {
    }
    @IBAction func four(_ sender: UIButton) {
    }
    @IBAction func five(_ sender: UIButton) {
    }
    @IBAction func six(_ sender: UIButton) {
    }
    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var total: UILabel!
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBAction func control(_ sender: UISegmentedControl) {
    }
    @IBOutlet weak var display: UITextField!
    
    @IBAction func newTotal1(_ sender: UIButton) {
        if sender.tag == 1{
           
            if segment.selectedSegmentIndex == 0{
                 display.text="$15.55"
            }
            if segment.selectedSegmentIndex == 1{
                display.text="$22.54"
            }
//            #imageLiteral(resourceName: "Image").image=UIImage(named: "Image")
        }
        if sender.tag == 2{
            if segment.selectedSegmentIndex == 0{
                display.text="$31.10"
            }
            if segment.selectedSegmentIndex == 1{
                display.text="$38.09"
            }
//            #imageLiteral(resourceName: "Image").image=UIImage(named: "Image")
        }
        if sender.tag == 3{
            if segment.selectedSegmentIndex == 0{
                display.text="$46.65"
            }
            if segment.selectedSegmentIndex == 1{
                display.text="$53.64"
            }
//            #imageLiteral(resourceName: "Image").image=UIImage(named: "Image")
        }
    }
    @IBAction func newTotal2(_ sender: UIButton) {
        if sender.tag == 1{
            if segment.selectedSegmentIndex == 0{
                display.text="$15.55"
            }
            if segment.selectedSegmentIndex == 1{
                display.text="$22.54"
            }
            //            #imageLiteral(resourceName: "Image").image=UIImage(named: "Image")
        }
        if sender.tag == 2{
            if segment.selectedSegmentIndex == 0{
                display.text="$31.10"
            }
            if segment.selectedSegmentIndex == 1{
                display.text="$38.09"
            }
            //            #imageLiteral(resourceName: "Image").image=UIImage(named: "Image")
        }
        if sender.tag == 3{
            if segment.selectedSegmentIndex == 0{
                display.text="$46.65"
            }
            if segment.selectedSegmentIndex == 1{
                display.text="$53.64"
            }
            //            #imageLiteral(resourceName: "Image").image=UIImage(named: "Image")
        }
    }
    @IBAction func newTotal3(_ sender: UIButton) {
        if sender.tag == 1{
            if segment.selectedSegmentIndex == 0{
                display.text="$15.55"
            }
            if segment.selectedSegmentIndex == 1{
                display.text="$22.54"
            }
            //            #imageLiteral(resourceName: "Image").image=UIImage(named: "Image")
        }
        if sender.tag == 2{
            if segment.selectedSegmentIndex == 0{
                display.text="$31.10"
            }
            if segment.selectedSegmentIndex == 1{
                display.text="$38.09"
            }
            //            #imageLiteral(resourceName: "Image").image=UIImage(named: "Image")
        }
        if sender.tag == 3{
            if segment.selectedSegmentIndex == 0{
                display.text="$46.65"
            }
            if segment.selectedSegmentIndex == 1{
                display.text="$53.64"
            }
            //            #imageLiteral(resourceName: "Image").image=UIImage(named: "Image")
        }
    }
    @IBAction func newTotal4(_ sender: UIButton) {
        if sender.tag == 4{
            if segment.selectedSegmentIndex == 0{
                display.text="$17.99"
            }
            if segment.selectedSegmentIndex == 1{
                display.text="$24.98"
            }
            //            #imageLiteral(resourceName: "Image").image=UIImage(named: "Image")
        }
        if sender.tag == 5{
            if segment.selectedSegmentIndex == 0{
                display.text="$35.98"
            }
            if segment.selectedSegmentIndex == 1{
                display.text="$42.97"
            }
            //            #imageLiteral(resourceName: "Image").image=UIImage(named: "Image")
        }
        if sender.tag == 6{
            if segment.selectedSegmentIndex == 0{
                display.text="$53.97"
            }
            if segment.selectedSegmentIndex == 1{
                display.text="$60.96"
            }
            //            #imageLiteral(resourceName: "Image").image=UIImage(named: "Image")
        }
    }
    @IBAction func newTotal5(_ sender: UIButton) {
        if sender.tag == 4{
            if segment.selectedSegmentIndex == 0{
                display.text="$17.99"
            }
            if segment.selectedSegmentIndex == 1{
                display.text="$24.98"
            }
            //            #imageLiteral(resourceName: "Image").image=UIImage(named: "Image")
        }
        if sender.tag == 5{
            if segment.selectedSegmentIndex == 0{
                display.text="$35.98"
            }
            if segment.selectedSegmentIndex == 1{
                display.text="$42.97"
            }
            //            #imageLiteral(resourceName: "Image").image=UIImage(named: "Image")
        }
        if sender.tag == 6{
            if segment.selectedSegmentIndex == 0{
                display.text="$53.97"
            }
            if segment.selectedSegmentIndex == 1{
                display.text="$60.96"
            }
            //            #imageLiteral(resourceName: "Image").image=UIImage(named: "Image")
        }
    }
    @IBAction func newTotal6(_ sender: UIButton) {
        if sender.tag == 4{
            if segment.selectedSegmentIndex == 0{
                display.text="$17.99"
            }
            if segment.selectedSegmentIndex == 1{
                display.text="$24.98"
            }
            //            #imageLiteral(resourceName: "Image").image=UIImage(named: "Image")
        }
        if sender.tag == 5{
            if segment.selectedSegmentIndex == 0{
                display.text="$35.98"
            }
            if segment.selectedSegmentIndex == 1{
                display.text="$42.97"
            }
            //            #imageLiteral(resourceName: "Image").image=UIImage(named: "Image")
        }
        if sender.tag == 6{
            if segment.selectedSegmentIndex == 0{
                display.text="$53.97"
            }
            if segment.selectedSegmentIndex == 1{
                display.text="$60.96"
            }
            //            #imageLiteral(resourceName: "Image").image=UIImage(named: "Image")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

