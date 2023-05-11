//
//  LocalService.swift
//  Pets
//
//  Created by Bilal Durnagöl on 11.05.2023.
//

import Foundation

class LocalService: NetworkService {
    func load(_ resourcesName: String) async throws -> ScreenModel {
        guard let path = Bundle.main.path(forResource: resourcesName, ofType: "json") else { fatalError("Resource file \(resourcesName) not found!") }
        
        let data = try Data(contentsOf: URL(fileURLWithPath: path))
        let screenModel = try JSONDecoder().decode(ScreenModel.self, from: data)
        return screenModel
    }
    
}
