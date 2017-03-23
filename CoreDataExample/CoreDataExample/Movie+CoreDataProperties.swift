//
//  Movie+CoreDataProperties.swift
//  CoreDataExample
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie");
    }

    @NSManaged public var director: String?
    @NSManaged public var title: String?
    @NSManaged public var year: Int16
    @NSManaged public var studio: Studio?

}
