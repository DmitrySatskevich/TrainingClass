//
//  CalculatorVC.swift
//  TrainingClass
//
//  Created by dzmitry on 22.02.23.
//

import UIKit

class CalculatorVC: UIViewController {
    
    @IBOutlet weak var proteinRateLbl: UILabel!
    @IBOutlet weak var fatRateLbl: UILabel!
    @IBOutlet weak var carbohydrateRateLbl: UILabel!
    @IBOutlet weak var totalCaloriesLbl: UILabel!
    
    @IBOutlet weak var weightLossTFOutlet: UITextField!
    @IBOutlet weak var weightMaintenanceTFOutlet: UITextField!
    @IBOutlet weak var massGainTFOutlet: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func weightLossButton() {
        weightLossTFOutlet.isHidden = false
    }
    
    @IBAction func weightMaintenanceButton() {
        weightMaintenanceTFOutlet.isHidden = false
    }
    
    @IBAction func massGainButton() {
        massGainTFOutlet.isHidden = false
    }
    
    @IBAction func calculateButton() {
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
