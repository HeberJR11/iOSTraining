//
//  FoodEditViewController.swift
//  FoodInfoApp
//
//  Created by MacBook on 27/01/23.
//

import UIKit

class FoodEditViewController: UIViewController {
    
    weak var presenter: FoodEditPresenter?
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var calTextField: UITextField!
    
    @IBOutlet weak var fatTextField: UITextField!
    
    @IBOutlet weak var sugarTextField: UITextField!
    
    @IBOutlet weak var fiberTextField: UITextField!
    
    @IBOutlet weak var carbsTextField: UITextField!
    
    @IBOutlet weak var proteinTextField: UITextField!
    
    @IBOutlet weak var unitTextField: UITextField!
    
    @IBOutlet weak var imageFoodEdit: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let sheet = presentationController as? UISheetPresentationController else { return }
        
        sheet.detents = [.medium(), .large()]
        sheet.selectedDetentIdentifier = .medium
        sheet.prefersGrabberVisible = true
        sheet.preferredCornerRadius = 20
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.presenter?.requestFoodSelected()
    }
    
    @IBAction func changeButton(_ sender: Any) {
    }
    
    @IBAction func saveButton(_ sender: Any) {
        
        guard let name = nameTextField.text else {
            return
        }
        guard let cal = calTextField.text else {
            return
        }
        guard fatTextField.text != nil else {
            return
        }
        guard let sugar = sugarTextField.text else {
            return
        }
        guard let fiber = fiberTextField.text else {
            return
        }
        guard let carbs = carbsTextField.text else {
            return
        }
        guard let protein = proteinTextField.text else {
            return
        }
        guard let units = unitTextField.text else {
            return
        }
        
        guard let calnum = Double(cal) else {
            return
        }
        
        guard let fatnum = Double(cal) else {
            return
        }
        
        guard let sugarnum = Double(cal) else {
            return
        }
        
        guard let fibernum = Double(cal) else {
            return
        }
        
        guard let carbsnum = Double(cal) else {
            return
        }
        
        guard let proteinnum = Double(cal) else {
            return
        }
        
        guard let unitsnum = Double(cal) else {
            return
        }
        
        self.presenter?.updateFood(name: name, calorias: calnum, carbs: carbsnum, fat: fatnum, fiber: fibernum, protein: proteinnum, suggar: sugarnum, units: unitsnum)
    }
    
}

extension FoodEditViewController: FoodEditDelegate {
    
    func food(foodEdited food: FoodEntity) {
        print("l")
        
        self.nameTextField.text = food.name
        self.calTextField.text = food.calorias.description
    }
    
}
