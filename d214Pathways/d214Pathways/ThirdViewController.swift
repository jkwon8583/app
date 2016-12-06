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

    func saveNewClass(name: String, number: String, year: String, classDescriptions: String, id: String, pathwayID: String)
    {

        Classes.createInManagedObjectContext(self.managedObjectContext, name: name, number: number, year: year, classDescriptions: classDescriptions, id: id, pathwayID: pathwayID)
        
        save()
        
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

    @IBAction func addButton(sender: UIButton)
    {
    
        saveNewClass(name, number: number, year: year, classDescriptions: classDescription, id: id, pathwayID: pathwayID)
        
        performSegueWithIdentifier("scheduleSegue", sender: self)
    
    }

}
