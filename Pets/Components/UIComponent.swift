//
//  UIComponent.swift
//  Pets
//
//  Created by Bilal Durnagöl on 11.05.2023.
//

import Foundation
import SwiftUI

protocol UIComponent {
    var uniqueId: String { get }
    func render() -> AnyView
}
