//
//  CalculatorVC.swift
//  TrainingClass
//
//  Created by dzmitry on 22.02.23.
//

import UIKit

final class CalculatorVC: UIViewController {
    
    @IBOutlet weak private var proteinRateLbl: UILabel!
    @IBOutlet weak private var fatRateLbl: UILabel!
    @IBOutlet weak private var carbohydrateRateLbl: UILabel!
    @IBOutlet weak private var totalCaloriesLbl: UILabel!
    
    @IBOutlet weak private var weightLossTFOutlet: UITextField!
    @IBOutlet weak private var weightMaintenanceTFOutlet: UITextField!
    @IBOutlet weak private var massGainTFOutlet: UITextField!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        notificationCenter()
    }
    
    @IBAction func weightLossButton() {
        isHiddenUpdate(textField: weightLossTFOutlet)
    }
    
    @IBAction func weightMaintenanceButton() {
        isHiddenUpdate(textField: weightMaintenanceTFOutlet)
    }
    
    @IBAction func massGainButton() {
        isHiddenUpdate(textField: massGainTFOutlet)
    }
    
    @IBAction func calculateButton() {
        
        let weightLoss: Double? = Double(weightLossTFOutlet.text!)
        let weightMaintenance: Double? = Double(weightMaintenanceTFOutlet.text!)
        let massGain: Double? = Double(massGainTFOutlet.text!)
        
//         логика отображения КБЖУ
        if weightLoss != nil {
            proteinRateLbl.text = String(format: "%.2f", (weightLoss! * 25 * 0.333 / 4)) + " гр"
            fatRateLbl.text = String(format: "%.2f", (weightLoss! * 25 * 0.333 / 9)) + " гр"
            carbohydrateRateLbl.text = String(format: "%.2f", (weightLoss! * 25 * 0.4 / 4)) + " гр"
            totalCaloriesLbl.text = String(format: "%.2f", (weightLoss! * 25))
        } else if weightMaintenance != nil {
            proteinRateLbl.text = String(format: "%.2f", (weightMaintenance! * 28 * 0.333 / 4)) + " гр"
            fatRateLbl.text = String(format: "%.2f", (weightMaintenance! * 28 * 0.333 / 9)) + " гр"
            carbohydrateRateLbl.text = String(format: "%.2f", (weightMaintenance! * 28 * 0.4 / 4)) + " гр"
            totalCaloriesLbl.text = String(format: "%.2f", (weightMaintenance! * 28))
        } else if massGain != nil {
            proteinRateLbl.text = String(format: "%.2f", (massGain! * 32 * 0.333 / 4)) + " гр"
            fatRateLbl.text = String(format: "%.2f", (massGain! * 32 * 0.333 / 9)) + " гр"
            carbohydrateRateLbl.text = String(format: "%.2f", (massGain! * 32 * 0.4 / 4)) + " гр"
            totalCaloriesLbl.text = String(format: "%.2f", (massGain! * 32))
        }
    }
    
    private func isHiddenUpdate(textField: UITextField) {
        if textField.isHidden == true {
            textField.isHidden = false
            textField.text = ""
        } else {
            textField.isHidden = true
            textField.text = ""
        }
    }
    
    private func notificationCenter() {
        NotificationCenter.default.addObserver(self, selector: #selector(kbDidShow), name:
                                                UIWindow.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(kbDidHide), name:
                                                UIWindow.keyboardWillHideNotification, object: nil)
    }
    
    //  Смещение экрана при появлении клавиатуры
    @objc func kbDidShow(notification: Notification) {
        self.view.frame.origin.y = 0
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            self.view.frame.origin.y -= (keyboardSize.height / 2)
        }
    }
        
    //  При закрытии клавиатура, экран возвращается в исходное положение
    @objc func kbDidHide() {
        self.view.frame.origin.y = 0
    }
    
    // Скрытие клавиатуры по тапу за пределами Text Field
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
