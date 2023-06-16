//
//  BTCModel.swift
//  NeverGiveUpBTC
//
//  Created by Paul on 14/6/2566 BE.
//

import Foundation

struct BTCModel: Decodable {
    let timeList: TimeList
    let disclaimer: String
    let chartName: String
    let bpi: BPIModel
    
    init(timeList: TimeList, disclaimer: String, chartName: String, bpi: BPIModel) {
        self.timeList = timeList
        self.disclaimer = disclaimer
        self.chartName = chartName
        self.bpi = bpi
    }
    
    enum CodingKeys: String, CodingKey {
        case timeList = "time"
        case disclaimer
        case chartName
        case bpi
    }
    
    struct TimeList: Decodable {
        let updated: String
        let updatedISO: String
        let updateduk: String
        
        enum CodingKeys: String, CodingKey {
            case updated, updatedISO, updateduk
        }
    }
    
    struct BPIModel: Decodable {
        let usd: BPIData
        let gbp: BPIData
        let eur: BPIData
        
        enum CodingKeys: String, CodingKey {
            case usd = "USD"
            case gbp = "GBP"
            case eur = "EUR"
        }
    }
    
    struct BPIData: Decodable {
        let code: String
        let symbol: String
        let description: String
        let rateString: String
        let rateFloat: Double
        
        enum CodingKeys: String, CodingKey {
            case code, symbol, description
            case rateFloat = "rate_float"
            case rateString = "rate"
        }
    }
    
    enum Status {
        case success
        case failure
    }
    
    struct Value {
        var responseData: BTCModel
        var responseStatus: Status
    }
    
}






