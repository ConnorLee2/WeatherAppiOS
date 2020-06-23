//
//  WeatherModel.swift
//  WeatherApp
//
//  Created by Connor Lee on 07/06/2020.
//  Copyright © 2020 Connor Lee. All rights reserved.
//

import Foundation

struct WeatherModel: Codable {
    var coord: Coordinate
    var weather: [Weather]
    var base: String
    var main: Main
    var visibility: Int?
    var dt: Date
    var sys: Sys
    var id: Int
    var name: String
    var cod: Int
}
