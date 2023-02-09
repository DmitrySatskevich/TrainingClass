//
//  HomepageVC.swift
//  TrainingClass
//
//  Created by dzmitry on 5.02.23.
//

import UIKit
import Firebase
import FirebaseStorage

class HomepageVC: UIViewController {
    
    private var user: User!
    
    @IBOutlet weak var returningAfterTheBreak: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    let tapGestureRecognizer = UITapGestureRecognizer(target: self,
                                                      action: #selector(imageTapped(tapGestureRecognizer:)))
        returningAfterTheBreak.isUserInteractionEnabled = true
        returningAfterTheBreak.addGestureRecognizer(tapGestureRecognizer)
    }

    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        _ = tapGestureRecognizer.view as! UIImageView
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let TrainingListVC = storyboard.instantiateViewController(withIdentifier:
            "TrainingList") as? TrainingListVC {
            navigationController?.pushViewController(TrainingListVC, animated: true)
        }
    }
    
//    @IBAction func button() {
//        do {
//            try Auth.auth().signOut()
//            dismiss(animated: true, completion: nil)
//        } catch {
//            print(error.localizedDescription)
//        }
//    }

}


