//
//  Register.swift
//  vrewards
//
//  Created by Anish Prabhu on 10/10/15.
//  Copyright © 2015 Apac Incorporated. All rights reserved.
//

import UIKit

var usernames = [String](arrayLiteral: "123")
var passwords = [String](arrayLiteral: "1234")

class Register: UIViewController {

    @IBOutlet var phone_number_txt: UITextField!
    @IBOutlet var username_txt: UITextField!
    @IBOutlet var password_txt: UITextField!
    @IBOutlet var confirm_password_txt: UITextField!
    
    override func viewDidLoad() {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func register(sender: AnyObject) {
        let phone_number = phone_number_txt.text
        let username = username_txt.text
        let password = password_txt.text
        let confirm_password = confirm_password_txt.text
        
        if (phone_number == "" || username == "" || password == "" || confirm_password == "") {
            let empty_field_alert = UIAlertController(title: "Error", message: "Please complete all fields.", preferredStyle: UIAlertControllerStyle.Alert)
            
            empty_field_alert.addAction(UIAlertAction(title: "Okay", style: .Default, handler: { (action: UIAlertAction!) in
                
                empty_field_alert .dismissViewControllerAnimated(true, completion: nil)
                
            }))
            
            presentViewController(empty_field_alert, animated: true, completion: nil)
         
        }
        else {
            if (password != confirm_password) {
                let empty_field_alert = UIAlertController(title: "Error", message: "Passwords do not match.", preferredStyle: UIAlertControllerStyle.Alert)
                
                empty_field_alert.addAction(UIAlertAction(title: "Okay", style: .Default, handler: { (action: UIAlertAction!) in
                    
                    empty_field_alert .dismissViewControllerAnimated(true, completion: nil)
                    
                }))
                
                presentViewController(empty_field_alert, animated: true, completion: nil)
            }
            
            else {
                if (phone_number?.characters.count != 7 && phone_number?.characters.count != 10 ) {
                    let empty_field_alert = UIAlertController(title: "Error", message: "Invalid Phone Number.", preferredStyle: UIAlertControllerStyle.Alert)
                    
                    empty_field_alert.addAction(UIAlertAction(title: "Okay", style: .Default, handler: { (action: UIAlertAction!) in
                        
                        empty_field_alert .dismissViewControllerAnimated(true, completion: nil)
                        
                    }))
                    
                    presentViewController(empty_field_alert, animated: true, completion: nil)
                }
                
                else {
                let empty_field_alert = UIAlertController(title: "Success", message: "Account registered!", preferredStyle: UIAlertControllerStyle.Alert)
                
                empty_field_alert.addAction(UIAlertAction(title:"OK", style: .Default, handler:  { action in self.performSegueWithIdentifier("go_to_login", sender: self)
                    
                }))
                usernames.append(username!)
                passwords.append(password!)
                presentViewController(empty_field_alert, animated: true, completion: nil)

                                }
                

            }
        }

    }
}
