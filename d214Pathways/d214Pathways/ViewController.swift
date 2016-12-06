//
//  ViewController.swift
//  d214Pathways
//
//  Created by apcsp on 11/8/16.
//  Copyright © 2016 apcsp. All rights reserved.
//

// Find your passion quiz

import UIKit
import SwiftyJSON
import Alamofire
import SafariServices
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet weak var tableView: UITableView!
    
    var jsonData: NSData!
    var pathwayName: [String] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://d214pathways.herokuapp.com/pathways")!
        let request = NSURLRequest(URL: url)

            do
            {
                
                self.jsonData = try NSURLConnection.sendSynchronousRequest(request, returningResponse: nil)
                var data = JSON(data: jsonData)
                
                for i in 0...(data.count - 1)
                {
                    
                    pathwayName.append(String((data[i])["pathwayName"]))
                    
                }

            }
            catch _
            {
                
            }
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
    
        return pathwayName.count
        
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
    
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell")
        
        cell?.textLabel?.text = pathwayName[indexPath.row]
        
        return cell!
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
    
        if segue.identifier == "scheduleSegue"
        {
        
        }
        else
        {
        
        let nvc = segue.destinationViewController as! SecondViewController
        let indexPath = tableView.indexPathForSelectedRow
        
        let url = NSURL(string: "http://d214pathways.herokuapp.com/pathways")!
        let request = NSURLRequest(URL: url)
        var nameArray: [String]! = []
        var classDescriptionArray: [String]! = []
        var idArray: [String]! = []
        var pathwayIDArray: [String]! = []
        var numberArray: [String]! = []
        var yearArray: [String]! = []
        
        do
        {
            
            self.jsonData = try NSURLConnection.sendSynchronousRequest(request, returningResponse: nil)
            var data = JSON(data: jsonData)
            
            let information = (data[(indexPath?.row)!]["data"])
            
            for i in 0...(information.count-1)
            {
                
                nameArray.append(String((information[i])["name"]))
                classDescriptionArray.append(String((information[i])["description"]))
                idArray.append(String((information[i])["id"]))
                pathwayIDArray.append(String((information[i])["pathway_id"]))
                numberArray.append(String((information[i])["number"]))
                yearArray.append(String((information[i])["year"]))
                
            }
            
            nvc.name = nameArray
            nvc.classDescription = classDescriptionArray
            nvc.id = idArray
            nvc.pathwayID = pathwayIDArray
            nvc.number = numberArray
            nvc.year = yearArray
            
        }
        catch
        {
        
        }
            
        }
        
    }

}
