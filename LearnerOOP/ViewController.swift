//
//  ViewController.swift
//  LearnerOOP
//
//  Created by Cindy Chandra on 15/05/19.
//  Copyright © 2019 Cindy Chandra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var objectBrandLabel: UILabel!
    @IBOutlet weak var objectColorLabel: UILabel!
    @IBOutlet weak var objectPriceLabel: UILabel!
    
    var objectInstance: objectModel? // You just created a copy of your LearnerModel
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        objectInstance = objectModel (brandObject: "Givenchy", colorObject: "Pink", priceObject: 15000000)
        updateUI()
    }

    func updateUI() {
        if let instance = objectInstance {
           objectBrandLabel.text = instance.brand
            objectColorLabel.text = instance.color
           objectPriceLabel.text = "Rp \(instance.price)"

        }
    }
}
