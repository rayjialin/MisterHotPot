//
//  NetworkManager.swift
//  MisterHotPot
//
//  Created by ruijia lin on 8/3/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

import Foundation
import Alamofire


class NetworkManager {
    
    func getBusinessDetail(id: String) {
        Alamofire.request(endPoint + id).responseJSON { (response) in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")
            
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
        }
    }
}
