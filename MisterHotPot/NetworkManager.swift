//
//  NetworkManager.swift
//  MisterHotPot
//
//  Created by ruijia lin on 8/3/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()

    private init() {}
    
    func getBusinessDetail(id: String, completion: @escaping (YelpDataModel?, Error?)->(YelpDataModel?)) {
    
        guard let url = URL(string: endPoint + id) else { return }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        urlRequest.allHTTPHeaderFields = [contentType: applicationJson,
                                          authorization: token]
        
        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            
            guard let data = data else {
                print("no data returned from server \(String(describing: error?.localizedDescription))")
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                print("no response returned from server \(String(describing: error))")
                return
            }
            
            guard response.statusCode == 200 else {
                return
            }
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            do {
                let yelpDataModel = try decoder.decode(YelpDataModel.self, from: data)
                completion(yelpDataModel, error)
            }catch {
                print("Decode failed")
                completion(nil, error)
            }
            
        }
        dataTask.resume()
    }
}
