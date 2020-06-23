//
//  CityDailyView.swift
//  WeatherApp
//
//  Created by Connor Lee on 08/06/2020.
//  Copyright © 2020 Connor Lee. All rights reserved.
//

import SwiftUI

struct CityDailyView: View {
    
    @State var dailyWeather: DailyWeather
    
    var body: some View {
        ZStack {
            HStack(alignment: .center) {
                Text(dailyWeather.dt.formattedDay)
                Spacer()
                HStack(spacing: 8) {
                    verticalTemperatureView(min: true)
                    verticalTemperatureView(min: false)
                }
            }
            HStack(alignment: .center) {
                Spacer()
                dailyWeather.weather[0].icon.image
                    .font(.body)
                Spacer()
            }
        }
    }
    
    func verticalTemperatureView(min: Bool) -> some View {
        VStack(alignment: .trailing) {
            Text(min ? "min" : "max")
                .font(.footnote)
                .foregroundColor(.gray)
            Text(min ? dailyWeather.temp.min.formattedTemperature: dailyWeather.temp.max.formattedTemperature)
                .font(.headline)
        }
    }
}

/*
struct CityDailyView_Previews: PreviewProvider {
    static var previews: some View {
        CityDailyView()
    }
}
*/
