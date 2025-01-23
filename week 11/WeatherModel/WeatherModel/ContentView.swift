//
//  ContentView.swift
//  WeatherModel
//
//  Created by labuser on 22/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var status = false
    @State private var searchText = ""
    let AsiaCity = AsiaWeatherData
    let EuropeCity = EuropeWeatherData
    
    var searchAsiaResult: [CityWeather]{
        if searchText.isEmpty{
            return AsiaCity
        }else{
            return AsiaCity.filter{$0.city.contains(searchText)}
        }
    }
    var searchEuropeResult: [CityWeather]{
        if searchText.isEmpty{
            return EuropeCity
        }else{
            return EuropeCity.filter{$0.city.contains(searchText)}
        }
    }
    
    var body: some View {
        NavigationStack{
            List{
                Section(header: Text("Asia")){
                    ForEach(searchAsiaResult, id:\.city){asia in
                        NavigationLink{
                            CityWeatherInfo(cityWeather: asia)
                        }label:{
                            Text(asia.city)
                        }}
                }
                Section(header: Text("Europe")){
                    ForEach(searchEuropeResult, id: \.city){europe in
                        NavigationLink{
                            CityWeatherInfo(cityWeather: europe)
                        }label:{
                            Text(europe.city)
                        }}
                }
            }
            .navigationTitle("Cities")
            .searchable(text: $searchText)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action:{
                        status = true
                    }){
                        Image(systemName:("info.circle"))
                    }
                }
            }
        }.sheet(isPresented: $status){
            Text("This app was created by Ching Wei Lun")
                .presentationDetents([.height(200)])
        }
    }
}

#Preview {
    ContentView()
}
