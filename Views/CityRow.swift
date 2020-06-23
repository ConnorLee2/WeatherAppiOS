//
//  CityRow.swift
//  WeatherApp
//
//  Created by Connor Lee on 07/06/2020.
//  Copyright © 2020 Connor Lee. All rights reserved.
//

import SwiftUI

struct CityRow: View {
    
    @ObservedObject var city: City
    
    var body: some View {
        NavigationLink(destination: CityWeatherView(city: city)) {
            HStack(alignment: .firstTextBaseline) {
                Text(city.weather?.name ?? "N/A")
                    .lineLimit(nil)
                    .font(.title)
                Spacer()
                HStack {
                    city.weather?.weather[0].icon.image
                        .foregroundColor(Color.gray)
                        .font(.title)
                    Text(city.weather?.main.temp.formattedTemperature ?? "-ºC")
                        .foregroundColor(.gray)
                        .font(.title)
                }
            }
            .padding([.trailing, .top, .bottom])
        }
    }
}

//struct CityRow_Previews: PreviewProvider {
    //static var previews: some View {
    //    CityRow(city: T##City)
  //  }
//}
