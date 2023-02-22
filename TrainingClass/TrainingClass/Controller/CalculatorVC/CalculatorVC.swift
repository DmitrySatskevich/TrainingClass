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
        guard let weightLoss = weightLossTFOutlet.text,
              let weightMaintenance = weightMaintenanceTFOutlet.text,
              let massGain = massGainTFOutlet.text
        else { return }
        
        // нужно создать логику отображения КБЖУ
        if weightLoss != "" {
            totalCaloriesLbl.text = weightLoss
        } else if weightMaintenance != "" {
            totalCaloriesLbl.text = weightMaintenance
        } else if massGain != "" {
            totalCaloriesLbl.text = massGain
        }
    }
    
    private func isHiddenUpdate(textField: UITextField) {
        if textField.isHidden == true {
            textField.isHidden = false
            textField.text = ""
        } else {
            textField.isHidden = true
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
        view.endEditing(true) // Скрывает клавиатуру, вызванную для любого объекта
    }
}
