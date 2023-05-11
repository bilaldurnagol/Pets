//
//  Webservice.swift
//  Pets
//
//  Created by Bilal Durnagöl on 11.05.2023.
//

import Foundation

enum NetworkError: Error {
    case invalidUrl
    case invalidServerResponse
}

class Webservice: NetworkService {
    
    func load(_ resouces: String) async throws -> ScreenModel {
        
        guard let url = URL(string: resouces) else {
            throw NetworkError.invalidUrl
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw NetworkError.invalidServerResponse
        }
        
     return try JSONDecoder().decode(ScreenModel.self, from: data)
        
    }
}
