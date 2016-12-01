//
//  Classes+CoreDataProperties.swift
//  
//
//  Created by apcsp on 11/30/16.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Classes {

    @NSManaged var name: String?
    @NSManaged var classDescriptions: String?
    @NSManaged var number: String?
    @NSManaged var id: String?
    @NSManaged var pathwayID: String?
    @NSManaged var year: String?

}
