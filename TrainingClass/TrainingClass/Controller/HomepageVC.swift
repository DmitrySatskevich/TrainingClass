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
        if let trainingListVC = storyboard.instantiateViewController(withIdentifier: "TrainingList") as? TrainingListVC {
            navigationController?.pushViewController(trainingListVC, animated: true)
        }
    }
    
    // выход из акаунта
    @IBAction func logoutTapped(_ sender: UIButton) {
        
        do {
            try Auth.auth().signOut()
            dismiss(animated: true, completion: nil)
        } catch {
            print(error.localizedDescription)
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let loginNavController = storyboard.instantiateViewController(identifier: "LoginNavigationController")

        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?
            .changeRootViewController(loginNavController)
    }
}


