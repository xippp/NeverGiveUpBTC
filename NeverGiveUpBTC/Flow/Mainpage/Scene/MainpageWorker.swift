//
//  MainpageWorker.swift
//  NeverGiveUpBTC
//
//  Created by Paul on 14/6/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import Alamofire
class MainpageWorker

{
    func fetchBTCService(completion: @escaping ((BTCModel.Value) -> Void)) {
        // 1
        var responseStatus: BTCModel.Status?
        let request = AF.request("https://api.coindesk.com/v1/bpi/currentprice.json")
        // 2
        request.responseDecodable(of: BTCModel.self) { (response) in
//            debugPrint(response)
            guard let data = response.value else { return }
            switch response.result {
            case .success:
                responseStatus = .success
            case .failure:
                responseStatus = .failure
            }
            guard let unwarpresponseStatus = responseStatus else { return }
            let value = BTCModel.Value(responseData: data,
                                       responseStatus: unwarpresponseStatus)
            completion(value)
        }
    }
    
}
