//
//  Double.swift
//  WeatherApp
//
//  Created by Connor Lee on 07/06/2020.
//  Copyright © 2020 Connor Lee. All rights reserved.
//

import Foundation

extension Double {
    var formattedTemperature: String {
        let formatter = NumberFormatter()
        formatter.allowsFloats = false
        
        let formattedDouble = formatter.string(from: NSNumber(value: self)) ?? "-"
        return formattedDouble + "ºC"
    }
}
