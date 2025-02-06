//
//  Scavenger.swift
//  photo-scavenger
//
//  Created by Adrian Haro on 2/4/25.
//

import UIKit
import CoreLocation

class Scavenger {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Scavenger {
    static var list: [Scavenger]{
        return [
            Scavenger(title: "Find a good waterfall", description: "It's not that hard"),
            Scavenger(title: "Find a really good waterfall", description: "Now you'll have to work hard for it"),
            Scavenger(title: "Find an awesome waterfall", description: "This is going to take a while!"),
            Scavenger(title: "Find the nearest flowers", description: "Considering it's next to the awesome waterfall these must be beautiful")
        ]
    }
}
