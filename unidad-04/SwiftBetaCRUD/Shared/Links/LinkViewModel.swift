//
//  LinkViewModel.swift
//  SwiftBetaCRUD
//
//  Created by user208646 on 5/22/24.
//

import Foundation

final class LinkViewModel: ObservableObject {
    @Published var links: [LinkModel] = []
    
    @Published var messageError: String?
    
    private let linkRepository: LinkRepository
    
    init(linkRepository: LinkRepository = LinkRepository()) {
        self.linkRepository = linkRepository
    }
    
    func getAllLinks() {
        linkRepository.getAllLinks { [weak self] result in
            switch result {
            case .success(let linkModels):
                self?.links = linkModels
            case .failure(let error):
                self?.messageError = error.localizedDescription
            }
        }
    }
    
    func createNewLink(fromURL url: String) {
        /*
        let numbers = [0]
        let _ = numbers[1]
        
        Tracker.trackCreateLinkEvent(url: url)
        */
        
        linkRepository.createNewLink(withURL: url) { [weak self] result in
            switch result {
            case .success(let link):
                
                // asignamos el nuevo link model al array que tenemos en memoria, aun no utilizamos firebase
                //self?.links.append(link)
            
                print("✅ New link \(link.title) added")
                //Tracker.trackSaveLinkEvent()
            case .failure(let error):
                /*
                DispatchQueue.main.async {
                    self?.messageError = error.localizedDescription
                    Tracker.trackErrorSaveLinkEvent(error: error.localizedDescription)
                }
            */
                self?.messageError = error.localizedDescription
            }
        }
    }
}
