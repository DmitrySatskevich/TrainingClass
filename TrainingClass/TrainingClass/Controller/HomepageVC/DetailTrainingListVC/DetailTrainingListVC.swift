//
//  DetailTrainingListVC.swift
//  TrainingClass
//
//  Created by dzmitry on 6.03.23.
//

import UIKit


final class DetailTrainingListVC: UIViewController {
    
    @IBOutlet weak var imageViewOne: UIImageView!
    @IBOutlet weak var imageViewTwo: UIImageView!
    @IBOutlet weak var imageViewThree: UIImageView!
    @IBOutlet weak var imageViewFour: UIImageView!
    @IBOutlet weak var imageViewFive: UIImageView!
    @IBOutlet weak var imageViewSix: UIImageView!
    
    @IBOutlet var activityIndicators: [UIActivityIndicatorView]!
    
    var trainId: TrainingNumberURL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViewCornerRadius()
        
        Task {
            do {
                imageViewOne.image = try await UIImage.gifImageWithURL(url: trainId!.urlGif)
                activityIndicators[0].stopAnimating()
                imageViewTwo.image = try await UIImage.gifImageWithURL(url: trainId!.urlGif2)
                activityIndicators[1].stopAnimating()
                imageViewThree.image = try await UIImage.gifImageWithURL(url: trainId!.urlGif3)
                activityIndicators[2].stopAnimating()
                imageViewFour.image = try await UIImage.gifImageWithURL(url: trainId!.urlGif4)
                activityIndicators[3].stopAnimating()
                imageViewFive.image = try await UIImage.gifImageWithURL(url: trainId!.urlGif5)
                activityIndicators[4].stopAnimating()
                imageViewSix.image = try await UIImage.gifImageWithURL(url: trainId!.urlGif6)
                activityIndicators[5].stopAnimating()
            } catch {
                print("Ошибка получения данных!")
            }
        }
    }
    
    private func imageViewCornerRadius() {
        imageViewOne.layer.cornerRadius = 15
        imageViewTwo.layer.cornerRadius = 15
        imageViewThree.layer.cornerRadius = 15
        imageViewFour.layer.cornerRadius = 15
        imageViewFive.layer.cornerRadius = 15
        imageViewSix.layer.cornerRadius = 15
    }

    @IBAction func logoutButton() {
        self.dismiss(animated: true)
    }
}
