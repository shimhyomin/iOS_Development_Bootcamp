//
//  WeatherManager.swift
//  Clima
//
//  Created by shm on 2021/08/16.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weahterURL = "https://api.openweathermap.org/data/2.5/weather?appid=dc963f47d5c0f7a24b5fe09f7a03bd46&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weahterURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        // 1. create URl
        // URL(string: )
        if let url = URL(string: urlString) {
            // 2. Create a URLSession
            // URLSession(configuration: )
            let session = URLSession(configuration: .default)
            
            // 3. Give the session a task
            // URLSessionDataTask dataTask(with: URL, completionHandler: (Data?, URLResponse?, Error?) -> void)
            let task = session.dataTask(with: url, completionHandler: handle(data:  response:  error: ))
            
            // 4. Start the task
            task.resume()
        }
    }
    
    // CompletionHandler
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
    }
    
}
