//
//  CityStore.swift
//  WeatherApp
//
//  Created by Connor Lee on 07/06/2020.
//  Copyright © 2020 Connor Lee. All rights reserved.
//

import SwiftUI
import Combine

class CityStore: ObservableObject {
    let didChange = PassthroughSubject<CityStore, Never>()
    
    var cities: [City] = [] {
        didSet {
            didChange.send(self)
        }
    }
}
