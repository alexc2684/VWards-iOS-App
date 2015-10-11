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

class Company_Page: UIViewController {
    
    @IBOutlet var goal_points: UILabel!
    @IBOutlet var company_label: UILabel!
    override func viewDidLoad() {
        company_label.text = cur_company
        if cur_company == "La Petite" {

        }
        if cur_company == "Amplify Barber Shop" {
            
        }
        if cur_company == "C.R.E.A.M." {
            
        }
        if cur_company == "Smoke's Poutinerie" {
            
        }
        if cur_company == "Seniore’s Pizza" {
            
        }
        
        goal_points.text = "Goal: \(cur_points) / 10"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }
    
}
