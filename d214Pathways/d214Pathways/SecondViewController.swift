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
        cell?.detailTextLabel?.text = number[indexPath.row]
        
        return cell!
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return name.count
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        
        let nvc = segue.destinationViewController as! ThirdViewController
        let indexPath = tableView.indexPathForSelectedRow

        nvc.name = name[indexPath!.row]
        nvc.classDescription = classDescription[indexPath!.row]
        nvc.id = id[indexPath!.row]
        nvc.pathwayID = pathwayID[indexPath!.row]
        nvc.number = number[indexPath!.row]
        nvc.year = year[indexPath!.row]
        
        
    }

}
