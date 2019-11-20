//
//  Model.swift
//  fourSquareMapKit
//
//  Created by hildy abreu on 11/15/19.
//  Copyright © 2019 hildy abreu. All rights reserved.
//

import Foundation



// MARK: - Mapkit
struct Mapkit: Codable {
    let meta: Meta?
    let response: Response?
}

// MARK: - Meta
struct Meta: Codable {
    let code: Int?
    let requestID: String?

    enum CodingKeys: String, CodingKey {
        case code
        case requestID = "requestId"
    }
}

// MARK: - Response
struct Response: Codable {
    let venues: [Venue]?
    let confident: Bool?
}

// MARK: - Venue
struct Venue: Codable {
    let id, name: String?
    let location: Location?
    let categories: [Category]?
    let referralID: ReferralID?
    let hasPerk: Bool?
    let hierarchy: [Hierarchy]?
    let venuePage: VenuePage?

    enum CodingKeys: String, CodingKey {
        case id, name, location, categories
        case referralID = "referralId"
        case hasPerk, hierarchy, venuePage
    }
}

// MARK: - Category
struct Category: Codable {
    let id, name, pluralName, shortName: String?
    let icon: Icon?
    let primary: Bool?
}

// MARK: - Icon
struct Icon: Codable {
    let iconPrefix: String?
    let suffix: Suffix?

    enum CodingKeys: String, CodingKey {
        case iconPrefix = "prefix"
        case suffix
    }
}

enum Suffix: String, Codable {
    case png = ".png"
}

// MARK: - Hierarchy
struct Hierarchy: Codable {
    let name, lang, id: String?
    let canonicalURL: String?

    enum CodingKeys: String, CodingKey {
        case name, lang, id
        case canonicalURL = "canonicalUrl"
    }
}

// MARK: - Location
struct Location: Codable {
    let lat, lng: Double?
    let labeledLatLngs: [LabeledLatLng]?
    let distance: Int?
    let cc: Cc?
    let city: City?
    let state: State?
    let country: Country?
    let formattedAddress: [String]?
    let address, crossStreet, postalCode: String?
}

enum Cc: String, Codable {
    case us = "US"
}

enum City: String, Codable {
    case bronx = "Bronx"
    case brooklyn = "Brooklyn"
    case jacksonHole = "Jackson hole"
    case newYork = "New York"
    case rioDeJaneiro = "Rio de Janeiro"
}

enum Country: String, Codable {
    case unitedStates = "United States"
}

// MARK: - LabeledLatLng
struct LabeledLatLng: Codable {
    let label: Label?
    let lat, lng: Double?
}

enum Label: String, Codable {
    case display = "display"
}

enum State: String, Codable {
    case newYork = "New York"
    case ny = "NY"
}

enum ReferralID: String, Codable {
    case v1573861469 = "v-1573861469"
    case v1573861470 = "v-1573861470"
}

// MARK: - VenuePage
struct VenuePage: Codable {
    let id: String?
}
