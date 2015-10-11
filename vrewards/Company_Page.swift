//
//  Company_Page.swift
//  vrewards
//
//  Created by Anish Prabhu on 10/11/15.
//  Copyright © 2015 Apac Incorporated. All rights reserved.
//

import UIKit
var cur_points = 0
var goal_points = 10
let code = "code"

class Company_Page: UIViewController {
    
    @IBOutlet var details: UILabel!
    @IBOutlet var goal_points: UILabel!
    @IBOutlet var company_label: UILabel!
    
    @IBOutlet weak var code_entry: UITextField!
    @IBOutlet weak var redeem_button: UIButton!
    
    @IBAction func redeem(sender: AnyObject) {
        if  code_entry == code {
            cur_points += 1
        }
    }
    
    override func viewDidLoad() {
        if cur_points == 10 {
            redeem_button.setTitle("REDEEM", forState: UIControlState .Normal)
        }
        company_label.text = cur_company
        if cur_company == "La Petite" {
            details.text = "Get a free haircut every 10 visits!"
        }
        if cur_company == "Amplify Barber Shop" {
            details.text = "Get a haircut for half off every 5 visits!"
        }
        if cur_company == "C.R.E.A.M." {
            details.text = "After 10 visits enjoy a free icecream taco on us!"
        }
        if cur_company == "Smoke's Poutinerie" {
            details.text = "Get one free Poutine of your choice after 10 visits!"
        }
        if cur_company == "Seniore’s Pizza" {
            details.text = "After 10 visits enjoy a free Large one topping pizza!"
        }
        
        goal_points.text = "Goal: \(cur_points) / 10"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }
    
}
