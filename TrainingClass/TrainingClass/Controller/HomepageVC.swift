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
    
    @IBOutlet weak var oneMonthImageView: UIImageView!
    @IBOutlet weak var twoMonthsImageView: UIImageView!
    @IBOutlet weak var threeMonthsImageView: UIImageView!
    @IBOutlet weak var fourMonthsImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tapGestureRecognizerFunc(ImageView: oneMonthImageView)
        
        size()
    }
    
    private func size() {
        oneMonthImageView.layer.cornerRadius = 20
        twoMonthsImageView.layer.cornerRadius = 20
        threeMonthsImageView.layer.cornerRadius = 20
        fourMonthsImageView.layer.cornerRadius = 20
    }
    
    private func tapGestureRecognizerFunc(ImageView: UIImageView) {
        let tapGestureRecognizer = UITapGestureRecognizer(
            target: self, action: #selector(imageTapped(tapGestureRecognizer:)))

        ImageView.addGestureRecognizer(tapGestureRecognizer)
        ImageView.isUserInteractionEnabled = true
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        
        _ = tapGestureRecognizer.view as? UIImageView
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "TrainingList") as? TrainingListVC {
            present(vc, animated: false, completion: nil)
        }
    }
    
    // выход из акаунта
    @IBAction func logoutTapped(_ sender: UIButton) {
        
        do {
            try Auth.auth().signOut()
        } catch {
            print(error.localizedDescription)
        }
    }
}


