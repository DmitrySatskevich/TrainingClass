//
//  TrainingListVC.swift
//  TrainingClass
//
//  Created by dzmitry on 8.02.23.
//

import UIKit

class TrainingListVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    // MARK: - Navigation
    
    @IBAction func transition() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let sec = storyboard.instantiateViewController(withIdentifier: "DetailTrainingListVC") as? DetailTrainingListVC {
            sec.modalPresentationStyle = .fullScreen
            sec.trainId = TrainingNumberURL()
            self.present(sec, animated: true, completion: nil)
        }
    }

     @IBAction func exitAction() {
         self.dismiss(animated: false)
     }
}
