//
//  Apartment.swift
//  CodingTest
//
//  Created by Maximilian Stump on 7/26/22.
//

import Foundation

struct Apartment : Codable, Hashable {
    var id = UUID()
    var aptName : String
    var numberOfBathrooms: Double
    var numberOfBedrooms : Int
    var rentPerMonth : Double
}


struct SingleApartment : Codable, Hashable {
    var aptName : String
    var aptAddress : String
    var floorType : String
    var sqFt : Int
    
}
