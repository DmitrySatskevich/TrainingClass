//
//  TrainingListVC.swift
//  TrainingClass
//
//  Created by dzmitry on 8.02.23.
//

import UIKit

final class TrainingListVC: UIViewController {
    
    // MARK: - Navigation
    
    @IBAction func trainingOneBtn() {
        goToTheNextViewController(numberTraining: "ТРЕНИРОВКА 1",
                                  trainingDescription: trainingDescriptionOne,
                                  arrayUrl: arrayURLOne)
    }
    
    @IBAction func trainingTwoBtn() {
        goToTheNextViewController(numberTraining: "ТРЕНИРОВКА 2",
                                  trainingDescription: trainingDescriptionTwo,
                                  arrayUrl: arrayURLTwo)
    }
    
    @IBAction func trainingThreeBtn() {
        goToTheNextViewController(numberTraining: "ТРЕНИРОВКА 3",
                                  trainingDescription: trainingDescriptionThree,
                                  arrayUrl: arrayURLThree)
    }
    
    @IBAction func trainingFourBtn() {
        goToTheNextViewController(numberTraining: "ТРЕНИРОВКА 4",
                                  trainingDescription: trainingDescriptionFour,
                                  arrayUrl: arrayURLFour)
    }
    
    @IBAction func trainingFiveBtn() {
        goToTheNextViewController(numberTraining: "ТРЕНИРОВКА 5",
                                  trainingDescription: trainingDescriptionFive,
                                  arrayUrl: arrayURLFive)
    }
    
    @IBAction func trainingSixBtn() {
        goToTheNextViewController(numberTraining: "ТРЕНИРОВКА 6",
                                  trainingDescription: trainingDescriptionSix,
                                  arrayUrl: arrayURLSix)
    }
    
    @IBAction func trainingSevenBtn() {
        goToTheNextViewController(numberTraining: "ТРЕНИРОВКА 7",
                                  trainingDescription: trainingDescriptionSeven,
                                  arrayUrl: arrayURLSeven)
    }
    
    @IBAction func trainingEightBtn() {
        goToTheNextViewController(numberTraining: "ТРЕНИРОВКА 8",
                                  trainingDescription: trainingDescriptionEight,
                                  arrayUrl: arrayURLEight)
    }
    
    @IBAction func trainingNineBtn() {
        goToTheNextViewController(numberTraining: "ТРЕНИРОВКА 9",
                                  trainingDescription: trainingDescriptionNine,
                                  arrayUrl: arrayURLNine)
    }
    
    @IBAction func trainingTenBtn() {
        goToTheNextViewController(numberTraining: "ТРЕНИРОВКА 10",
                                  trainingDescription: trainingDescriptionTen,
                                  arrayUrl: arrayURLTen)
    }
    
    @IBAction func trainingElevenBtn() {
        goToTheNextViewController(numberTraining: "ТРЕНИРОВКА 11",
                                  trainingDescription: trainingDescriptionEleven,
                                  arrayUrl: arrayURLEleven)
    }
    
    @IBAction func trainingTwelveBtn() {
        goToTheNextViewController(numberTraining: "ТРЕНИРОВКА 12",
                                  trainingDescription: trainingDescriptionTwelve,
                                  arrayUrl: arrayURLTwelve)
    }
    
    @IBAction func trainingThirteenBtn() {
        goToTheNextViewController(numberTraining: "ТРЕНИРОВКА 13",
                                  trainingDescription: trainingDescriptionThirteen,
                                  arrayUrl: arrayURLThirteen)
    }
    
    @IBAction func exitAction() {
         self.dismiss(animated: false)
     }
    
    private func goToTheNextViewController(numberTraining: String, trainingDescription: String, arrayUrl: [URL] ) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let sec = storyboard.instantiateViewController(withIdentifier: "DetailTrainingListVC") as? DetailTrainingListVC {
            sec.modalPresentationStyle = .fullScreen
            sec.numberTraining = numberTraining
            sec.trainingDescription = trainingDescription
            sec.arrayUrl = arrayUrl
            self.present(sec, animated: true, completion: nil)
        }
    }
}
