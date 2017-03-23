//
//  MovieDAO.swift
//  CoreDataExample
//
//  Created by Student on 3/23/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import Foundation
import CoreData

class MovieDAO {
    
    static func add(_ movie: Movie) -> Bool {
        
        return CoreDataManager.insert(movie)
    }
    
    static func remove(_ movie: Movie) -> Bool {
        
        return CoreDataManager.delete(movie)
    }

    static func searchAll() ->  [Movie] {
        var result = [Movie]()
        
        let request: NSFetchRequest<Movie> = Movie.fetchRequest()
        request.sortDescriptors = [
            NSSortDescriptor(key: "title", ascending: true)
        ]
        
        do {
            try result = CoreDataManager.getContext().fetch(request)
        } catch let error  {
            print("Could not search the movies: \(error)")
        }
        
        return result
    }
    
}
