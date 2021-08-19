//
//  CoinModel.swift
//  ByteCoin
//
//  Created by shm on 2021/08/19.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
    let rate: Float
    let currency: String
    var rateString: String {
        return String(format: "%.2f", rate)
    }
}
