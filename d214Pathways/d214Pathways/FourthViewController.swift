//
//  FourthViewController.swift
//  d214Pathways
//
//  Created by apcsp on 12/1/16.
//  Copyright © 2016 apcsp. All rights reserved.
//

import UIKit
import CoreData

class FourthViewController: UIViewController, UITabBarDelegate, UITableViewDataSource
{

    @IBOutlet weak var tableView: UITableView!
    
    var classes = [Classes]()
    
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        fetchClasses()
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell")
        
        cell?.textLabel?.text = classes[indexPath.row].name
        
        return cell!
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return classes.count
        
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        
        if(editingStyle == .Delete )
        {
            
            let listItemToDelete = classes[indexPath.row]
            
            managedObjectContext.deleteObject(listItemToDelete)
            
            self.fetchClasses()
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            
            save()
            
        }
        
    }
    
    func save()
    {
        
        do
        {
            
            try managedObjectContext.save()
            
        }
        catch
        {
            
        }
        
    }

    
    func fetchClasses()
    {
    
        let fetchRequest = NSFetchRequest(entityName: "Classes")
        let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
    
        fetchRequest.sortDescriptors = [sortDescriptor]
    
        do
        {
    
            if let fetchResults = try managedObjectContext.executeFetchRequest(fetchRequest) as? [Classes]
            {
    
                classes = fetchResults
    
            }
    
        }
        catch
        {
                
        }
            
    }

}
