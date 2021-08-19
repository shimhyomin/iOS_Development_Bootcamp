//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func didUpdateCoin(_ coinManager: CoinManager, coin: CoinModel)
    func didFailWithError(error: Error)
}

struct CoinManager {
    
    var delegate: CoinManagerDelegate?
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "664079A7-E3A6-4F71-B394-84A861B6745C"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    func getCoinPrice(for currency: String) {
        print(currency)
    }
    
    func fetchCoin(currency: String){
        let url = "\(baseURL)/\(currency)?apikey=\(apiKey)"
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
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                
                // 들어온 data 확인하기!!
                let encodeData = String(data: data!, encoding: .utf8)
                print(encodeData!)
                
                if let safeData = data {
                    if let coinData = parseJSON(safeData) {
                        let rate = coinData.rate
                        let currency = coinData.asset_id_quote
                        let coinModel = CoinModel(rate: rate, currency: currency)
                        self.delegate?.didUpdateCoin(self, coin: coinModel)
                    }
                }
            }
            // 4. task 실행
            task.resume()
        }
    }
    
    func parseJSON(_ coinData: Data) -> CoinData? {
        let decoder = JSONDecoder()
        do {
            let decodeData = try decoder.decode(CoinData.self, from: coinData)
            print("\(decodeData)")
            return decodeData
        }
        catch {
            self.delegate?.didFailWithError(error: error)
            return nil
        }
    }
    
}
