//
//  FoodDetailsViewController.swift
//  FoodInfoApp
//
//  Created by MacBook on 27/01/23.
// camera.macro

import UIKit

class FoodDetailsViewController: UIViewController {
    
    weak var presenter: FoodDetailsPresenter?
    
    var foodSelected: FoodEntity?
    
    @IBOutlet weak var foodImage: UIImageView!
    
    @IBOutlet weak var nameFoodLabel: UILabel!
    @IBOutlet weak var nutrientsLabel: UILabel!
    
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var caloriesCountLabel: UILabel!
    
    @IBOutlet weak var fatLabel: UILabel!
    @IBOutlet weak var fatCountLabel: UILabel!
    
    @IBOutlet weak var sugarLabel: UILabel!
    @IBOutlet weak var sugarCountLabel: UILabel!
    
    @IBOutlet weak var fiberLabel: UILabel!
    @IBOutlet weak var fiberCountLabel: UILabel!
    
    @IBOutlet weak var carbsLabel: UILabel!
    @IBOutlet weak var carbsCountLabel: UILabel!
    
    @IBOutlet weak var proteinLabel: UILabel!
    @IBOutlet weak var proteinCountLabel: UILabel!
    
    @IBOutlet weak var unitLabel: UILabel!
    @IBOutlet weak var unitCountLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Food Details"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(self.editButtonAction))
        //foodImage.layer.cornerRadius = foodImage.bounds.size.width / 5.0
        foodImage.layer.cornerRadius = 9
        foodImage.layer.borderWidth = 5
        foodImage.layer.borderColor = UIColor.blue.cgColor
    }
    
    @objc func editButtonAction() {
        
        self.presenter?.goToEdit()
        
        /*
        let viewControllerToPresent = FoodEditViewController()
        present(viewControllerToPresent, animated: true, completion: nil)*/
        
    }
}

extension FoodDetailsViewController: FoodDetailsDelegate {
    
    func food(foodSelected food: FoodEntity) {
        self.foodSelected = food
    }
    
    
}
