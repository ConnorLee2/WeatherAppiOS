//
//  DailyWeatherModel.swift
//  WeatherApp
//
//  Created by Connor Lee on 08/06/2020.
//  Copyright © 2020 Connor Lee. All rights reserved.
//

import Foundation

struct DailyWeatherModel: Codable {
    var lat: Double
    var lon: Double
    var timezone: String
    var timezone_offset: Int
    var daily: [DailyWeather]
}
