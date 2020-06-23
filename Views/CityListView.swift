//
//  CityListView.swift
//  WeatherApp
//
//  Created by Connor Lee on 07/06/2020.
//  Copyright © 2020 Connor Lee. All rights reserved.
//

import SwiftUI

struct CityListView: View {
    
    @EnvironmentObject var cityStore: CityStore
    
    @State var isAddingCity: Bool = false
    @State private var isEditing: Bool = false
    
    // TODO: delete and move dont work
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Your Cities")) {
                    
                    ForEach(cityStore.cities, id: \.name) { city in
                        CityRow(city: city)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
            }
            .navigationBarItems(leading: EditButton(), trailing: addButton)
            .navigationBarTitle(Text("Weather"))
        }
    }
    
    private var addButton: some View {
        Button(action: {
            self.isAddingCity = true
            self.isEditing = false
        }) {
            Image(systemName: "plus.circle.fill")
                .font(.title)
        }
        .sheet(isPresented: $isAddingCity) {
            NewCityView(isAddingCity: self.$isAddingCity)
                .environmentObject(self.cityStore)
        }
    }
    
    private func delete(at offsets: IndexSet) {
        cityStore.cities.remove(atOffsets: offsets)
    }

    private func move(from source: IndexSet, to destination: Int) {
        if let first = source.first {
            cityStore.cities.swapAt(first, destination)
        }
    }
}

struct CityListView_Previews: PreviewProvider {
    static var previews: some View {
        CityListView()
    }
}
