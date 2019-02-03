//
//  vc3.swift
//  s_prog
//
//  Created by Ahmed abu elregal on 10/19/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import UIKit

class vc3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    ////////////////////////////////////////////////////////////////////
    
    //function used to check is email valid or not
    func isvalidEmailAddress(emailAddressString: String) -> Bool
    {
        var return_value = true
        let emailREgEX = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        do
        {
            let regex = try
                NSRegularExpression(pattern: emailREgEX)
            let nsString = emailAddressString as NSString
            let results = regex.matches(in:  emailAddressString,range: NSRange(location: 0,length: nsString.length))
            if results.count == 0
            {
                return_value = false
            }
        }
        catch let error as NSError
        {
            print("invalid regex:\(error.localizedDescription)")
            return_value = false
        }
        return return_value
    }
    ////////////////////////////////////////////////////////////////////
    let user = "sss@gmail.com"
    let passw = "123456"
    @IBOutlet weak var txt7: UITextField!
    
    @IBAction func txt7(_ sender: Any) {
        
    }
    
    @IBOutlet weak var txt8: UITextField!
    
    @IBAction func txt8(_ sender: Any) {
        
    }
    
    @IBOutlet weak var b4: UIButton!
    
    @IBAction func b4(_ sender: Any) {
        
        
        //check if user & passw is correct || not
        if ((txt7.text == user) && txt8.text == passw)
        {
            print("correct")
            //check if the txt field is emty || not
            let storyBoard : UIStoryboard = UIStoryboard (name : "Main",bundle : nil)
            let nextvc = storyBoard.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
            self.present(nextvc,animated: true,completion: nil)
            
            
            //calling func
            isvalidEmailAddress (emailAddressString: user)
        }
            else if (txt7.text != user &&  txt8.text != passw )
        {
            print("error")
            
        }
        
            }
    ////////////////////////////////////////////////////////////////////
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
