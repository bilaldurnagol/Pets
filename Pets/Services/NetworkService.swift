//
//  NetworkService.swift
//  Pets
//
//  Created by Bilal Durnagöl on 11.05.2023.
//

import Foundation

protocol NetworkService {
    func load(_ resourcesName: String) async throws -> ScreenModel
}
