//
//  FetchCities.swift
//  WeatherApp
//
//  Created by Connor Lee on 08/06/2020.
//  Copyright © 2020 Connor Lee. All rights reserved.
//

import Foundation
import SwiftyJSON

class FetchCities: ObservableObject {
    /*
    @Published var citiesList = [City]()
    
    init() {
        self.getCityList()
    }
    
    public func getCityList() {
        if let path = Bundle.main.path(forResource: "citylist", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
                let jsonObj = try JSON(data: data)
                
                for i in 1...10 {
                    var jsonCity = City.build(json: jsonObj[i])
                    if (jsonCity != nil) {
                        citiesList.append(jsonCity!)
                        print(jsonCity?.name)
                    }
                }
            } catch let error {
                print("parse error: \(error.localizedDescription)")
            }
        } else {
            print("Invalid filename/path.")
        }
    }*/
}
