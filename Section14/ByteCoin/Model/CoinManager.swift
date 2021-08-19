//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "664079A7-E3A6-4F71-B394-84A861B6745C"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    func getCoinPrice(for currency: String) {
        print(currency)
    }
    
    func fetchCoin(currency: String){
        let url = "\(baseURL)+\(currency)+\(apiKey)"
        performRequest(urlString: url)
    }
    
    func performRequest(urlString: String) {
        // 1. URL 생성
        if let url = URL(string: urlString) {
            // 2. URLSession 생성
            let session = URLSession(configuration: .default)
            
            // 3. session에 task
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    print(error!)
                    return
                }
                if let safeData = data {
                    print(safeData)
                }
            }
            
            // 4. task 실행
            task.resume()
        }
    }
    
    
}
