//
//  Studio+CoreDataProperties.swift
//  CoreDataExample
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import Foundation
import CoreData


extension Studio {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Studio> {
        return NSFetchRequest<Studio>(entityName: "Studio");
    }

    @NSManaged public var moviesProduced: NSSet?

}

// MARK: Generated accessors for moviesProduced
extension Studio {

    @objc(addMoviesProducedObject:)
    @NSManaged public func addToMoviesProduced(_ value: Movie)

    @objc(removeMoviesProducedObject:)
    @NSManaged public func removeFromMoviesProduced(_ value: Movie)

    @objc(addMoviesProduced:)
    @NSManaged public func addToMoviesProduced(_ values: NSSet)

    @objc(removeMoviesProduced:)
    @NSManaged public func removeFromMoviesProduced(_ values: NSSet)

}
