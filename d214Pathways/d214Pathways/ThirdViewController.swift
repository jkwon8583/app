//
//  ThirdViewController.swift
//  d214Pathways
//
//  Created by apcsp on 11/29/16.
//  Copyright © 2016 apcsp. All rights reserved.
//

import UIKit
import CoreData

class ThirdViewController: UIViewController
{

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!

    var name: String!
    var classDescription: String!
    var id: String!
    var pathwayID: String!
    var number: String!
    var year: String!
    
    var classes = [Classes]()
    
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        navigationItem.title = name
    
        numberLabel.text = "Class Number: " + number + "         "
        descriptionLabel.text = "Class Description: " + classDescription
        
    }
    
//    
//    func fetchClasses()
//    {
//        
//        let fetchRequest = NSFetchRequest(entityName: "Classes")
//        let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
//        
//        fetchRequest.sortDescriptors = [sortDescriptor]
//        
//        do
//        {
//            
//            if let fetchResults = try managedObjectContext.executeFetchRequest(fetchRequest) as? [Classes]
//            {
//                
//                classes = fetchResults
//                
//            }
//            
//        }
//        catch
//        {
//            
//        }
//        
//    }

    func saveNewClass(name: String, number: String, year: String, classDescriptions: String, id: String, pathwayID: String)
    {
        
//        let newClass =
        Classes.createInManagedObjectContext(self.managedObjectContext, name: name, number: number, year: year, classDescriptions: classDescriptions, id: id, pathwayID: pathwayID)
        
        save()
        
//        self.fetchClasses()
//        
//        if let newClassIndex: Int! = classes.indexOf(newClass)
//        {
//            
//            let newClassIndexPath = NSIndexPath(forRow: newClassIndex!, inSection: 0)
//            
//            tableView.insertRowsAtIndexPaths([newClassIndexPath], withRowAnimation: .Automatic)
//            
//            save()
//            
//        }
        
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

}
