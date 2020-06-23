//
//  WeatherIcon.swift
//  WeatherApp
//
//  Created by Connor Lee on 08/06/2020.
//  Copyright © 2020 Connor Lee. All rights reserved.
//

import SwiftUI

extension Weather {
    
    enum Icon: String, Codable {
        
        case clearSkyDay = "01d"
        case clearSkyNight = "01n"
        case fewCloudsDay = "02d"
        case fewCloudsNight = "02n"
        case scatteredCloudsDay = "03d"
        case scatteredCloudsNight = "03n"
        case brokenCloudsDay = "04d"
        case brokenCloudsNight = "04n"
        case showerRainDay = "09d"
        case showerRainNight = "09n"
        case rainDay = "10d"
        case rainNight = "10n"
        case thunderstormDay = "11d"
        case thunderstormNight = "11n"
        case snowDay = "13d"
        case snowNight = "13n"
        case mistDay = "50d"
        case mistNight = "50n"
        
        var image: Image {
            switch self {
            case .clearSkyDay:
                return Image(systemName: "sun.max.fill")
            case .clearSkyNight:
                return Image(systemName: "moon.fill")
            case .fewCloudsDay:
                return Image(systemName: "cloud.sun.fill")
            case .fewCloudsNight:
                return Image(systemName: "cloud.moon.fill")
            case .scatteredCloudsDay:
                return Image(systemName: "cloud.fill")
            case .scatteredCloudsNight:
                return Image(systemName: "cloud.fill")
            case .brokenCloudsDay:
                return Image(systemName: "smoke.fill")
            case .brokenCloudsNight:
                return Image(systemName: "smoke.fill")
            case .showerRainDay:
                return Image(systemName: "cloud.heavyrain.fill")
            case .showerRainNight:
                return Image(systemName: "cloud.heavyrain.fill")
            case .rainDay:
                return Image(systemName: "cloud.rain.fill")
            case .rainNight:
                return Image(systemName: "cloud.rain.fill")
            case .thunderstormDay:
                return Image(systemName: "cloud.bolt.fill")
            case .thunderstormNight:
                return Image(systemName: "cloud.bolt.fill")
            case .snowDay:
                return Image(systemName: "snow")
            case .snowNight:
                return Image(systemName: "snow")
            case .mistDay:
                return Image(systemName: "cloud.fog.fill")
            case .mistNight:
                return Image(systemName: "cloud.fog.fill")
            }
        }
                
    }
}
