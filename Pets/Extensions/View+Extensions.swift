//
//  View+Extensions.swift
//  Pets
//
//  Created by Bilal Durnagöl on 11.05.2023.
//

import Foundation
import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}
