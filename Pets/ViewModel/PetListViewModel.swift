//
//  PetListViewModel.swift
//  Pets
//
//  Created by Bilal Durnagöl on 11.05.2023.
//

import Foundation

@MainActor
class PetListViewModel: ObservableObject {
    
    private var service: Webservice
    @Published var components: [UIComponent] = []
    
    init(service: Webservice) {
        self.service = service
    }
    
    func load() async {
        do {
            let screenModel = try await service.load(Constants.Urls.petListing)
            components = try screenModel.buildComponents()
        } catch {
            print(error)
        }
    }
}
