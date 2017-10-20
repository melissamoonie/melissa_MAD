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
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var fontSizeLabel: UILabel!
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        if segmentControl.selectedSegmentIndex == 0 {
            
            
            imageView.image=UIImage(named:"beer.jpg")
            
        }
        if segmentControl.selectedSegmentIndex == 1 {
            
            imageView.image=UIImage(named: "marg.jpg" )
            
        }
        if segmentControl.selectedSegmentIndex == 2 {
            
            imageView.image=UIImage(named: "pina.jpg" )
            
        }
        
    }
    @IBAction func budget(_ sender: UISlider) {
        let fontSize=sender.value;
        fontSizeLabel.text=String(format: "%.0f", fontSize)
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

