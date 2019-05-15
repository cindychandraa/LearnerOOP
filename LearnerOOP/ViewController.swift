//
//  ViewController.swift
//  LearnerOOP
//
//  Created by Cindy Chandra on 15/05/19.
//  Copyright © 2019 Cindy Chandra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var learnerNameLabel: UILabel!
    @IBOutlet weak var learnerAgeLabel: UILabel!
    @IBOutlet weak var learnerGenderLabel: UILabel!
    
    var learnerInstance: LearnerModel?
    var facilitatorInstance: FacilitatorModel?// You just created a copy of your LearnerModel
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        learnerInstance = LearnerModel (nameLearner: "Cindy", ageLearner: 20, genderLearner: "Female", imageProfileLearner: "")
        updateUI()
    }

    func updateUI() {
        if let instance = learnerInstance {
          learnerNameLabel.text = instance.name
        learnerAgeLabel.text = "\(instance.age)"
         learnerGenderLabel.text = instance.gender

        }
    }
}
