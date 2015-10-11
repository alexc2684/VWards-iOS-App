//
//  Home_Screen.swift
//  vrewards
//
//  Created by Anish Prabhu on 10/10/15.
//  Copyright © 2015 Apac Incorporated. All rights reserved.
//

import UIKit
import Alamofire

var cur_company = ""

class Home_Screen: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    @IBOutlet weak var user_vrewards: UITableView!

    
    let company_names = ["La Petite", "Amplify Barber Shop", "C.R.E.A.M.", "Seniore’s Pizza", "Smoke's Poutinerie"]
    
    let textCellIdentifier = "TextCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return company_names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath) as UITableViewCell
        
        let row = indexPath.row
        cell.textLabel?.text = company_names[row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    tableView.deselectRowAtIndexPath(indexPath, animated: true)
    
    let row = indexPath.row
    cur_company = company_names[row]
    print(cur_company)
    self.performSegueWithIdentifier("go_to_company", sender: self)
    }

    
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
}
