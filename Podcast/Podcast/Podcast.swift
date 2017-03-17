//
//  Podcast.swift
//  Podcast
//
//  Created by Student on 3/16/17.
//  Copyright © 2017 Mateus Luna. All rights reserved.
//

import Foundation

class Podcast {
    var picture: String
    var title: String
    var details: String
    
    init(picture: String, title: String, details: String) {
        self.picture = picture
        self.title = title
        self.details = details
    }
    
}

class PodcastDAO {
    
    static func getPodcasts() -> [Podcast] {
        return [
            Podcast(picture: "99vidas", title: "99 Vidas", details: "11 cats?"),
            Podcast(picture: "canal42", title: "Canal 42", details: "Read the guide!"),
            Podcast(picture: "mm", title: "MM", details: "Chocolate or mith?"),
            Podcast(picture: "naoouvo", title: "Não Ouvo", details: "For deaf people."),
            Podcast(picture: "nerdcast", title: "Nerd Cast", details: "How nerds get laid?"),
            Podcast(picture: "ompdb", title: "OMPDB", details: "WTF man!"),
            Podcast(picture: "rapaduracast", title: "Rapadura Cast", details: "Best northest food."),
            Podcast(picture: "reloading", title: "Reloading", details: "Ruindows?"),
            Podcast(picture: "scicast", title: "SCI Cast", details: "Are you a ET?")
        ]
    }
}
