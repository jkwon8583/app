//
//  SecondViewController.swift
//  d214Pathways
//
//  Created by apcsp on 11/18/16.
//  Copyright © 2016 apcsp. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
   
    @IBOutlet weak var tableView: UITableView!

    var name: [String]!
    var classDescription: [String]!
    var id: [String]!
    var pathwayID: [String]!
    var number: [String]!
    var year: [String]!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell")
        
        cell?.textLabel?.text = name[indexPath.row]
        
        return cell!
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return name.count
        
    }

}
