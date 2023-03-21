//
//  DetailTrainingListVC.swift
//  TrainingClass
//
//  Created by dzmitry on 6.03.23.
//

import UIKit

final class DetailTrainingListVC: UIViewController {
    
    @IBOutlet weak var numberTrainingLbl: UILabel!
    @IBOutlet weak var trainingDescriptionLbl: UILabel!
    
    @IBOutlet weak var imageViewOne: UIImageView!
    @IBOutlet weak var imageViewTwo: UIImageView!
    @IBOutlet weak var imageViewThree: UIImageView!
    @IBOutlet weak var imageViewFour: UIImageView!
    @IBOutlet weak var imageViewFive: UIImageView!
    @IBOutlet weak var imageViewSix: UIImageView!
    
    @IBOutlet var activityIndicators: [UIActivityIndicatorView]!
    
    var numberTraining: String?
    var trainingDescription: String?
    var arrayUrl: [URL] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViewCornerRadius()
        numberTrainingLbl.text = numberTraining
        trainingDescriptionLbl.text = trainingDescription
        addUrlToImageView(insertArrayUrlGif: arrayUrl)
    }
    
    private func addUrlToImageView(insertArrayUrlGif: [URL]) -> () {
        Task {
            do {
                imageViewOne.image = try await UIImage.gifImageWithURL(url: insertArrayUrlGif[0])
                activityIndicators[0].stopAnimating()
                imageViewTwo.image = try await UIImage.gifImageWithURL(url: insertArrayUrlGif[1])
                activityIndicators[1].stopAnimating()
                imageViewThree.image = try await UIImage.gifImageWithURL(url: insertArrayUrlGif[2])
                activityIndicators[2].stopAnimating()
                imageViewFour.image = try await UIImage.gifImageWithURL(url: insertArrayUrlGif[3])
                activityIndicators[3].stopAnimating()
                imageViewFive.image = try await UIImage.gifImageWithURL(url: insertArrayUrlGif[4])
                activityIndicators[4].stopAnimating()
                imageViewSix.image = try await UIImage.gifImageWithURL(url: insertArrayUrlGif[5])
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
