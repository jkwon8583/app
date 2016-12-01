//
//  Classes.swift
//  
//
//  Created by apcsp on 11/30/16.
//
//

import Foundation
import CoreData


class Classes: NSManagedObject
{

    class func createInManagedObjectContext(moc: NSManagedObjectContext, name: String, number: String, year: String, classDescriptions: String, id: String, pathwayID: String) -> Classes
    {
        
        let newClass = NSEntityDescription.insertNewObjectForEntityForName("Classes", inManagedObjectContext: moc) as! Classes
        
        newClass.name = name
        newClass.number = number
        newClass.year = year
        newClass.classDescriptions = classDescriptions
        newClass.id = id
        newClass.pathwayID = pathwayID
        
        return newClass
        
    }

}
