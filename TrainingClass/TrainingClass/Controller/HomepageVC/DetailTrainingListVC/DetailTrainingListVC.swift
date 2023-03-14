//
//  DetailTrainingListVC.swift
//  TrainingClass
//
//  Created by dzmitry on 6.03.23.
//

import UIKit

class DetailTrainingListVC: UIViewController {
    
    @IBOutlet weak var imageViewOne: UIImageView!
    @IBOutlet weak var imageViewTwo: UIImageView!
    @IBOutlet weak var imageViewThree: UIImageView!
    
    @IBOutlet var activityIndicators: [UIActivityIndicatorView]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViewCornerRadius()
        
        Task {
            do {
                let imageOne = try await UIImage.gifImageWithURL(url: urlGif)
                let imageTwo = try await UIImage.gifImageWithURL(url: urlGif2)
                let imageThree = try await UIImage.gifImageWithURL(url: urlGif3)
                imageViewOne.image = imageOne
                imageViewTwo.image = imageTwo
                imageViewThree.image = imageThree
                activityIndicators[0].stopAnimating()
                activityIndicators[1].stopAnimating()
                activityIndicators[2].stopAnimating()
            } catch {
                print(error)
            }
        }
    }
    
    private func imageViewCornerRadius() {
        imageViewOne.layer.cornerRadius = 15
        imageViewTwo.layer.cornerRadius = 15
        imageViewThree.layer.cornerRadius = 15
    }

    @IBAction func signOutItem(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true)
    }
}
