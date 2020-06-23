//
//  WeatherManager.swift
//  WeatherApp
//
//  Created by Connor Lee on 07/06/2020.
//  Copyright © 2020 Connor Lee. All rights reserved.
//

import Foundation

class WeatherManager {
    static let apiKey: String = "943f357b9782c97db6a098ac9d418281"
    static let currentWeatherURL: String = "https://api.openweathermap.org/data/2.5/weather?q="
    static let weeklyWeatherUrl: String = "https://api.openweathermap.org/data/2.5/forecast?q="
    static let oneCallApiUrl: String = "https://api.openweathermap.org/data/2.5/onecall?lat="
    static let oneCallApiUrlExclude: String = "&exclude=hourly,minutely,current"
}
