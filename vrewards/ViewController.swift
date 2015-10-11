//
//  ViewController.swift
//  vrewards
//
//  Created by Anish Prabhu on 10/10/15.
//  Copyright © 2015 Apac Incorporated. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {


    @IBOutlet weak var username_txt: UITextField!
    @IBOutlet weak var password_txt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()/*
        Alamofire.request(.GET, "").responseJSON() {
            (_, data, _) in
            print(data)
        }*/
        
        let prefs:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        let isLoggedIn:Int = prefs.integerForKey("ISLOGGEDIN") as Int
        if (isLoggedIn != 0) {

       }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sign_in(sender: AnyObject) {
        let user_username = username_txt.text;
        let user_password = password_txt.text;

        if usernames.contains(user_username!)
        {
            if(passwords.contains(user_password!))
            {
                // Login is successfull
                NSUserDefaults.standardUserDefaults().setBool(true,forKey:"is_user_logged_in");
                NSUserDefaults.standardUserDefaults().synchronize();
                
                self.performSegueWithIdentifier("login", sender: self)
            }
            else {
                let empty_field_alert = UIAlertController(title: "Error", message: "Invalid login credentials.", preferredStyle: UIAlertControllerStyle.Alert)
                
                empty_field_alert.addAction(UIAlertAction(title: "Okay", style: .Default, handler: { (action: UIAlertAction!) in
                    
                    empty_field_alert .dismissViewControllerAnimated(true, completion: nil)
                    
                }))
                
                presentViewController(empty_field_alert, animated: true, completion: nil)
            }
        }
        else {
            let empty_field_alert = UIAlertController(title: "Error", message: "Invalid login credentials.", preferredStyle: UIAlertControllerStyle.Alert)
            
            empty_field_alert.addAction(UIAlertAction(title: "Okay", style: .Default, handler: { (action: UIAlertAction!) in
                
                empty_field_alert .dismissViewControllerAnimated(true, completion: nil)
                
            }))
            
            presentViewController(empty_field_alert, animated: true, completion: nil)
        }

    }

}

