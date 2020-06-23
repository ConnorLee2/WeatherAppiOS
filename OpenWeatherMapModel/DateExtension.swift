//
//  DateExtension.swift
//  WeatherApp
//
//  Created by Connor Lee on 08/06/2020.
//  Copyright © 2020 Connor Lee. All rights reserved.
//

import Foundation

extension Date {
    
    var formattedHour: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        
        return dateFormatter.string(from: self)
    }
    
    var formattedDay: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MMM d"
        
        return dateFormatter.string(from: self)
    }
    
}
