//
//  Movie+CoreDataClass.swift
//  CoreDataExample
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import Foundation
import CoreData


public class Movie: NSManagedObject {

    convenience init() {
        
        let context = CoreDataManager.getContext()
        let entity = NSEntityDescription.entity(forEntityName: "Movie", in: context)
        
        self.init(entity: entity!, insertInto: context)
    }
}
