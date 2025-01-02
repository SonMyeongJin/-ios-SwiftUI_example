//
//  Landmark.swift
//  Lanmarks_example
//
//  Created by 손명진 on 1/2/25.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable,Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var Description: String
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    
    private var coordinates: Coordinate
    
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }

    struct Coordinate: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
