//
//  ViewController.swift
//  LearnerOOP
//
//  Created by Cindy Chandra on 15/05/19.
//  Copyright © 2019 Cindy Chandra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var learnerGenderLabel: UILabel!
    @IBOutlet weak var learnerAgeLabel: UILabel!
    @IBOutlet weak var learnerNameLabel: UILabel!
    
    var learnerInstance: LearnerModel? // You just created a copy of your LearnerModel
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        learnerInstance = LearnerModel(nameLearner: "Jason", ageLearner: 21, genderLearner: "Male", imageProfileLearner: "")
        updateUI()
    }

    func updateUI() {
        if let instance = learnerInstance {
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = "\(instance.age)"
            learnerGenderLabel.text = instance.gender
        }
    }

    @IBAction func btnAgePress(_ sender: UIButton) {
        if let instance = learnerInstance {
            instance.increaseAge()
        }
        updateUI()
    }
}

