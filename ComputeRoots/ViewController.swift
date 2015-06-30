//
//  ViewController.swift
//  ComputeRoots
//
//  Created by Louie Pascual on 6/23/15.
//  Copyright (c) 2015 Louie Pascual. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var varA: UITextField!
    
    @IBOutlet weak var varB: UITextField!
    
    @IBOutlet weak var varC: UITextField!
    
    @IBOutlet weak var rootLabel: UILabel!
    
    @IBAction func getRoots(sender: AnyObject) {
        let a = (varA.text as NSString).doubleValue
        let b = (varB.text as NSString).doubleValue
        let c = (varC.text as NSString).doubleValue
        
        if a != 0 {
            var posRoot = ((-1 * b) + sqrt((b*b) - 4 * a * c))/(2 * a)
        
            var negRoot = ((-1 * b) - sqrt((b*b) - 4 * a * c))/(2 * a)
            
            posRoot = (0.01 * round(100 * posRoot))
            negRoot = (0.01 * round(100 * negRoot))
        
            rootLabel.text = "Roots are \(posRoot) and \(negRoot)"
        }
        else if b != 0 {
            
            let root = (-1 * c) / b
            rootLabel.text = "Only root is \(root)"
        }
        else {
            rootLabel.text = "No roots possible"
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

