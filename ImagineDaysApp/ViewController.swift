//
//  ViewController.swift
//  ImagineDaysApp
//
//  Created by Igor Vologodskiy on 22.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
//    @IBOutlet weak var resultButton: UIButton!
    private var numberOfDays = ""
    
//    let enUS = Locale(identifier: "en-US")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //corner rounding
//        resultButton.layer.cornerRadius = 12
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
            
    }

    @IBAction func resultButtonTapped() {
        infoLabel.text = "You've been enjoying life for \(numberOfDays)"
    }
}

