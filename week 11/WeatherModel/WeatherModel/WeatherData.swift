//
//  WeatherData.swift
//  WeatherModel
//
//  Created by labuser on 22/01/2025.
//

import Foundation

struct CityWeather{
    let city: String
    let weather: [Weather]
}

struct Weather: Identifiable{
    let id = UUID()
    let day: String
    let temperature: String
    let icon: String
}

let AsiaWeatherData: [CityWeather] = [
    CityWeather(
        city: "Tokyo", weather: [
        Weather(day: "Monday", temperature: "10", icon: "sun.rain"),
        Weather(day: "Tuesday", temperature: "10", icon: "sunny"),
        Weather(day: "Wednesday", temperature: "10", icon: "sunny"),
        Weather(day: "Thursday", temperature: "10", icon: "sun.rain"),
        Weather(day: "Friday", temperature: "10", icon: "sunny"),
        ]),
    CityWeather(
        city: "Thailand", weather: [
        Weather(day: "Monday", temperature: "26", icon: "sun.rain"),
        Weather(day: "Tuesday", temperature: "32", icon: "sun.max"),
        Weather(day: "Wednesday", temperature: "31", icon: "sun.max"),
        Weather(day: "Thursday", temperature: "24", icon: "sun.rain"),
        Weather(day: "Friday", temperature: "37", icon: "sun.max"),
        ]),
    CityWeather(
        city: "Korean", weather: [
        Weather(day: "Monday", temperature: "10", icon: "sunny"),
        Weather(day: "Tuesday", temperature: "10", icon: "sunny"),
        Weather(day: "Wednesday", temperature: "10", icon: "sun.rain"),
        Weather(day: "Thursday", temperature: "10", icon: "sunny"),
        Weather(day: "Friday", temperature: "10", icon: "sun.rain"),
        ])
]

let EuropeWeatherData: [CityWeather] = [
    CityWeather(city: "France", weather: [
        Weather(day: "Monday", temperature: "10", icon: "sun.rain"),
        Weather(day: "Tuesday", temperature: "10", icon: "sunny"),
        Weather(day: "Wednesday", temperature: "10", icon: "sunny"),
        Weather(day: "Thursday", temperature: "10", icon: "sun.rain"),
        Weather(day: "Friday", temperature: "10", icon: "sunny"),
    ]),
    CityWeather(city: "London", weather: [
        Weather(day: "Monday", temperature: "20", icon: "cloud.sun.rain"),
        Weather(day: "Tuesday", temperature: "10", icon: "sun.rain"),
        Weather(day: "Wednesday", temperature: "23", icon: "cloud.sun.rain"),
        Weather(day: "Thursday", temperature: "30", icon: "sunny"),
        Weather(day: "Friday", temperature: "20", icon: "cloud.sun.rain"),
    ]),
    CityWeather(city: "Iceland", weather: [
        Weather(day: "Monday", temperature: "10", icon: "sunny"),
        Weather(day: "Tuesday", temperature: "10", icon: "sun.rain"),
        Weather(day: "Wednesday", temperature: "10", icon: "sunny"),
        Weather(day: "Thursday", temperature: "10", icon: "sunny"),
        Weather(day: "Friday", temperature: "10", icon: "sun.rain"),
    ])
]
