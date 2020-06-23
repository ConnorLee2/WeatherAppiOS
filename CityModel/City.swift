//
//  City.swift
//  WeatherApp
//
//  Created by Connor Lee on 07/06/2020.
//  Copyright © 2020 Connor Lee. All rights reserved.
//

import SwiftUI
import Combine
import SwiftyJSON

class City: ObservableObject {
    var didChange = PassthroughSubject<City, Never>()
    
    //let id: Int
    //let state: String
    //let country: String
    //let coord: Coordinate
    
    let name: String
    @Published var weather: WeatherModel? {
        didSet {
            didChange.send(self)
        }
    }
    
    @Published var dailyWeatherModel: DailyWeatherModel? {
        didSet {
            didChange.send(self)
        }
    }
    
    init(name: String/*, id: Int, state: String, country: String,
         coord: Coordinate*/) {
        self.name = name
        //self.id = id
        //self.state = state
        //self.country = country
        //self.coord = coord
        self.getWeather()
    }
    
    public func getWeather() {
        guard let url = URL(string: WeatherManager.currentWeatherURL + self.name + "&appid=" + WeatherManager.apiKey + "&units=metric") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .secondsSince1970
                
                let weatherObject = try decoder.decode(WeatherModel.self, from: data)
                
                DispatchQueue.main.async {
                    self.weather = weatherObject
                    self.getDailyWeather()
                }
            } catch let DecodingError.dataCorrupted(context) {
                print(context)
            } catch let DecodingError.keyNotFound(key, context) {
                print("Key '\(key)' not found:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch let DecodingError.valueNotFound(value, context) {
                print("Value '\(value)' not found:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch let DecodingError.typeMismatch(type, context)  {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                print("error: ", error)
            }
        }.resume()
    }
    
    public func getDailyWeather() {
        let lat = self.weather?.coord.lat
        let lon = self.weather?.coord.lon
        let endUrl = lat!.description + "&lon=" + lon!.description + WeatherManager.oneCallApiUrlExclude
        let endUrl2 = "&appid=" + WeatherManager.apiKey + "&units=metric"
        let endUrl3 = endUrl + endUrl2
        
        guard let url = URL(string: WeatherManager.oneCallApiUrl + endUrl3) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .secondsSince1970
                
                let weatherObject = try decoder.decode(DailyWeatherModel.self, from: data)
                
                DispatchQueue.main.async {
                    //self.weather = weatherObject
                    self.dailyWeatherModel = weatherObject
                }
            } catch let DecodingError.dataCorrupted(context) {
                print(context)
            } catch let DecodingError.keyNotFound(key, context) {
                print("Key '\(key)' not found:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch let DecodingError.valueNotFound(value, context) {
                print("Value '\(value)' not found:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch let DecodingError.typeMismatch(type, context)  {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                print("error: ", error)
            }
        }.resume()
    }
    
    /*class func build(json: JSON) -> City? {
        guard let id = json["id"].int else { return nil }
        guard let name = json["name"].string else { return nil }
        guard let country = json["country"].string else { return nil }
        guard let state = json["state"].string else { return nil }
        guard let lat = json["coord"]["lat"].double else {return nil}
        guard let lon = json["coord"]["lon"].double else { return nil }
        let coord = Coordinate(lon: lon, lat: lat)
        let jsonCity = City(
            name: name,
            id: id,
            state: state,
            country: country,
            coord: coord)
        return jsonCity
    }*/
}
