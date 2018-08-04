//
//  Model.swift
//  MisterHotPot
//
//  Created by ruijia lin on 7/31/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

import UIKit

let locationModel = [#imageLiteral(resourceName: "bkLocation"), #imageLiteral(resourceName: "FlushingLocation")]

struct YelpDataModel: Codable {
    let id: String
    let categories: [Categories]
    let coordinates: Coordinates
    let displayPhone: String
    let hours: [Hours]
    let alias: String
    let imageUrl: String
    let isClaimed: Bool
    let isClosed: Bool
    let location: Location
    let name: String
    let phone: String
    let photos: [String]
    let price: String
    let rating: Float
    let reviewCount: Int
    let url: String
    let transactions: [String]
}

struct Categories: Codable {
    let alias: String
    let title: String
}

struct Coordinates: Codable {
    let latitude: Double
    let longitude: Double
}

struct Hours: Codable {
    let isOpenNow: Bool
    let hoursType: String
    let open: [Open]
}

struct Open: Codable {
    let day: Int
    let start: String
    let end: String
    let isOvernight: Bool
}

struct Location: Codable {
    let address1: String?
    let address2: String?
    let address3: String?
    let city: String?
    let country: String?
    let crossStreets: String?
    let displayAddress: [String]?
    let state: String?
    let zipCode: String?
}
