//
//  ViewController.swift
//  s_prog
//
//  Created by Ahmed abu elregal on 10/16/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
@IBOutlet weak var b1: UIButton!
    @IBAction func b1(_ sender: Any) {
        b1.setTitle("Login", for: .normal)
    }
    @IBOutlet weak var b2: UIButton!
    
    @IBAction func b2(_ sender: Any) {
         b1.setTitle("Sign Up", for: .normal)
    }
    @IBOutlet weak var lbl1: UILabel!
    @IBAction func lbl1(_ sender: Any) {
        lbl1.text = "Application"
    }
    
    
    override func didReceiveMemoryWarning() {
       
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

