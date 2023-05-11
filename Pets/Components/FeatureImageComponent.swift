//
//  FeatureImageComponent.swift
//  Pets
//
//  Created by Bilal Durnagöl on 11.05.2023.
//

import Foundation
import SwiftUI

struct FeatureImageComponent: UIComponent {
    
    let uiModel: FeatureImageUIModel
    
    var uniqueId: String {
        return ComponentType.featuredImage.rawValue
    }
    
    func render() -> AnyView {
        AsyncImage(url: uiModel.imageUrl) { image in
            image.resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            ProgressView()
        }.toAnyView()
    }
}
