//
//  DailyWeather.swift
//  WeatherApp
//
//  Created by Connor Lee on 08/06/2020.
//  Copyright © 2020 Connor Lee. All rights reserved.
//

import Foundation

struct DailyWeather: Codable, Hashable {
    static func == (lhs: DailyWeather, rhs: DailyWeather) -> Bool {
        return lhs.dt == rhs.dt
    }
    
    var dt: Date
    var sunrise: Date
    var sunset: Date
    var temp: Temperature
    var weather: [Weather]
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(dt)
    }
    /*
     var feels_like: TempFeeling
     var pressure: Int
     var humidty: Int
     var dew_point: Double
     var wind_speed: Double
     var wind_deg: Int
     var clouds: Int
     var uvi: Double
     */
}
