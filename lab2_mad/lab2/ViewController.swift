//
//  ViewController.swift
//  lab2
//
//  Created by melissa on 9/19/17.
//  Copyright © 2017 melissa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diveImage: UIImageView!
    @IBOutlet weak var diveText: UILabel!
    @IBOutlet weak var capitalSwitch: UISwitch!
    @IBOutlet weak var fontSizeLabel: UILabel!

    @IBOutlet weak var imageControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func changeInfo(_ sender: UISegmentedControl) {
        if imageControl.selectedSegmentIndex==0{
            diveText.text="Oregon Cliff Diving"
            diveImage.image=UIImage(named:"#imageLiteral(resourceName: "travisDive2")")
           
        }
        else if imageControl.selectedSegmentIndex==1{
            diveText.text="Colorado Cliff Diving"
            diveImage.image=UIImage(named: "#imageLiteral(resourceName: ",travisDive3")")
        }
    }

//    learned this from: https:
    //stackoverflow.com/questions/40085197/swift-3-change-the-color-of-a-button-by-pressing-another-button
    
    @IBAction func colorButton(_ sender: UIButton) {

        
            sender.setTitleColor(UIColor.red, for: .normal)
        
    }
    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func changeFontSize(_ sender: UISlider) {
        let fontSize=sender.value
        fontSizeLabel.text=String(format: "%.0f", fontSize)
        let fontSizeCGFloat=CGFloat(fontSize)
        diveText.font=UIFont.systemFont(ofSize: fontSizeCGFloat)
        
    }
    @IBAction func updateFont(_ sender: UISwitch) {
        if capitalSwitch.isOn{
            diveText.text=diveText.text?.uppercased()
        }
        else {
            self.diveText.text=diveText.text?.lowercased()
        }
    }
    
    func updateImage(){
        if imageControl.selectedSegmentIndex==0{
            diveText.text="Colorado Cliff Diving"
            diveImage.image=UIImage(named:"#imageLiteral(resourceName: ",travisDive")")
            
        }
        else if imageControl.selectedSegmentIndex==1{
            diveText.text="Oregon Cliff Diving"
            diveImage.image=UIImage(named: "#imageLiteral(resourceName: "travisDive2")")
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}





