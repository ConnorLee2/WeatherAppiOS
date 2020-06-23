//
//  Temperature.swift
//  WeatherApp
//
//  Created by Connor Lee on 08/06/2020.
//  Copyright © 2020 Connor Lee. All rights reserved.
//

import Foundation

struct Temperature: Codable {
    var day: Double
    var min: Double
    var max: Double
    var night: Double
    var eve: Double
    var morn: Double
}
