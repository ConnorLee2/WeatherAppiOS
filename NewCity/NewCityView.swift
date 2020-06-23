//
//  NewCityView.swift
//  WeatherApp
//
//  Created by Connor Lee on 07/06/2020.
//  Copyright © 2020 Connor Lee. All rights reserved.
//

import SwiftUI

struct NewCityView: View {
    
    @EnvironmentObject var cityStore: CityStore
    
    @Binding var isAddingCity: Bool
    var cities = [String](arrayLiteral: "London,gb", "Paris", "Newcastle,gb", "Leeds,gb")
    
    //@ObservedObject var citiesList = FetchCities()
    // TODO future use citiesList.json

    var body: some View {
        NavigationView {
            List {
                Section() {
                    ForEach(cities, id: \.self) { city in
                        Button(action: {
                            self.addCity(from: city)
                            self.isAddingCity = false
                        }) {
                            Text(city)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Add a new city"), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("Dismissing sheet view...")
                self.isAddingCity = false
            }) {
                Text("Done").bold()
            })
        }
    }
    
    private func addCity(from city: String) {
        let newCity = City(name: city)
        cityStore.cities.append(newCity)
    }
    
}

//struct NewCityView_Previews: PreviewProvider {
//    static var previews: some View {
  //      NewCityView(isAddingCity: Binding<Bool>)    }
//}
