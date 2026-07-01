//
//  ViewController.swift
//  Project_1
//
//  Created by Admin on 01.07.2026.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var happyLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var choiseDateBirth: UIDatePicker!
    @IBOutlet weak var dayButton: UIButton!
    @IBOutlet weak var dayLabel: UILabel!
    
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        choiseDateBirth.maximumDate = Date()
        
        happyLabel.text = "Радуйся каждому дню!"
        happyLabel.font = happyLabel.font.withSize(30)
        
        secondLabel.text = "Выберите свой день рождения:"
        
        dayButton.setTitle("Результат", for: .normal)
        dayButton.layer.cornerRadius = 15
        
        dayLabel.font = dayLabel.font.withSize(18)
        dayLabel.text = ""
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    
    
    @IBAction func showResult() {
        dayLabel.text = "Ты наслаждался жизнью уже \(numberOfDays) дней!"
    }
    
    
}

