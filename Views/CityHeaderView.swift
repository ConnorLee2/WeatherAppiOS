//
//  CityHeaderView.swift
//  WeatherApp
//
//  Created by Connor Lee on 08/06/2020.
//  Copyright © 2020 Connor Lee. All rights reserved.
//

import SwiftUI

struct CityHeaderView: View {
    
    @ObservedObject var city: City
    
    var temperature: String {
        guard let temperature = city.weather?.main.temp else {
            return "-ºC"
        }
        return temperature.formattedTemperature
    }
    
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            HStack(alignment: .center, spacing: 16) {
                city.weather?.weather[0].icon.image
                    .font(.largeTitle)
                Text(temperature)
                    .font(.largeTitle)
            }
            Spacer()
        }
            .frame(height: 110)
    }
}

/*struct CityHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CityHeaderView()
    }
}*/
