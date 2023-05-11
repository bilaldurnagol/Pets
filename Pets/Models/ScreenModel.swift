//
//  ScreenModel.swift
//  Pets
//
//  Created by Bilal Durnagöl on 11.05.2023.
//

import Foundation
 
enum ComponentError: Error {
    case decodingError
}

enum ComponentType: String, Decodable {
    case featuredImage
}

struct ComponentModel: Decodable {
    let type: ComponentType
    let data: [String: String]
}

struct ScreenModel: Decodable {
    let pageTitle: String
    let components: [ComponentModel]
}

extension ScreenModel {
    func buildComponents() throws -> [UIComponent] {
        var components: [UIComponent] = []
        
        for component in self.components {
            switch component.type {
            case .featuredImage:
                guard let uiModel: FeatureImageUIModel = component.data.decode() else { throw ComponentError.decodingError }
                
                components.append(FeatureImageComponent(uiModel: uiModel))
            }
        }
        return components
    }
}
