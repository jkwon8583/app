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

class ViewController: UIViewController
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
                    
                    let information = (data[i]["data"])
                    
                    pathwayName.append(String((data[i])["pathwayName"]))
                    
                    for a in 0...(information.count-1)
                    {
                    
                        //print((information[a])["name"])
                    
                    }
                    
                }

            }
            catch _
            {
                
            }
        
        print(pathwayName)
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
    
        return pathwayName.count
        
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
    
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell")
        
        cell?.textLabel?.text = pathwayName[indexPath.row] as! String
        
        return cell!
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
    
        <#code#>
    
    }

}
