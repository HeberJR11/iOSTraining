//
//  FoodEditViewController.swift
//  FoodInfoApp
//
//  Created by MacBook on 27/01/23.
//

import UIKit

class FoodEditViewController: UIViewController {
    
    weak var presenter: FoodEditPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let sheet = presentationController as? UISheetPresentationController else { return }
        
        sheet.detents = [.medium(), .large()]
        sheet.selectedDetentIdentifier = .medium
        sheet.prefersGrabberVisible = true
        sheet.preferredCornerRadius = 20
    }
}

extension FoodEditViewController: FoodEditDelegate {
    
    func food(foodEdited food: FoodEntity) {
        print("l")
    }
}
