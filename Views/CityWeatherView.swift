//
//  CityWeatherView.swift
//  WeatherApp
//
//  Created by Connor Lee on 07/06/2020.
//  Copyright © 2020 Connor Lee. All rights reserved.
//

import SwiftUI

struct CityWeatherView: View {
    
    @ObservedObject var city: City
    
    var body: some View {
        List {
            Section(header: Text("Now")) {
                CityHeaderView(city: city)
            }
            Section(header: Text("This week")) {
                ForEach(city.dailyWeatherModel!.daily, id: \.self) { daily in
                    CityDailyView(dailyWeather: daily)
                }
            }
        }
        .navigationBarTitle(Text(city.weather?.name ?? "N/A"))
    }
}

//struct CityWeatherView_Previews: PreviewProvider {
    //static var previews: some View {
    //    CityWeatherView()
  //  }
//}
