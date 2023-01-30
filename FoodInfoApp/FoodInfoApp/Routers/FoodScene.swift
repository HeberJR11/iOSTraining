//
//  FoodScene.swift
//  FoodInfoApp
//
//  Created by MacBook on 27/01/23.
//

import Foundation
import UIKit

class FoodScene: NSObject {
    
    let interactor = FoodInteractor()
    
    let router = DetailsEditRouter()
    
    lazy var detailsPresenter: FoodDetailsPresenter = {
        
        let presenter = FoodDetailsPresenter(router: self.router, interactor: self.interactor)
        
        return presenter
        
    }()
    
    lazy var editPresenter: FoodEditPresenter = {
        
        let presenter = FoodEditPresenter(router: self.router, interactor: self.interactor)
        
        return presenter
        
    }()
    
    func createScene(window: UIWindow?) {
        
        window?.rootViewController = self.router.navigationController
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.goToEdit), name: NSNotification.Name("foodScene.goToEdit"), object: nil)
        
    }
    
    @objc func goToEdit(notification: Notification) {
        
        self.openEdit()
        
    }
    
    // Otros presenters
    
    func openDetails() {
        
        self.detailsPresenter.openDetails()
        
    }
    
    func closeDetails() {
        
        self.detailsPresenter.closeDetails()
        
    }
    
    func openEdit() {
        
        self.editPresenter.openDetails()
        
    }
    
}
