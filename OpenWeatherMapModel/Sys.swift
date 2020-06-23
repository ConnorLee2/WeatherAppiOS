//
//  Sys.swift
//  WeatherApp
//
//  Created by Connor Lee on 07/06/2020.
//  Copyright © 2020 Connor Lee. All rights reserved.
//

import Foundation

struct Sys: Codable {
    var type: Int?
    var id: Int
    var message: Double?
    var country: String
    var sunrise: Date
    var sunset: Date
}
