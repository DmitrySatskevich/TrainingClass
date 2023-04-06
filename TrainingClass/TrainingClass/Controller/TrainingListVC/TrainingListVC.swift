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
        goToTheDetailTrainingListVC(numberTraining: "ТРЕНИРОВКА 1",
                                  trainingDescription: trainingDescriptionOne,
                                  arrayUrl: arrayURLOne)
    }
    
    @IBAction func trainingTwoBtn() {
        goToTheDetailTrainingListVC(numberTraining: "ТРЕНИРОВКА 2",
                                  trainingDescription: trainingDescriptionTwo,
                                  arrayUrl: arrayURLTwo)
    }
    
    @IBAction func trainingThreeBtn() {
        goToTheDetailTrainingListVC(numberTraining: "ТРЕНИРОВКА 3",
                                  trainingDescription: trainingDescriptionThree,
                                  arrayUrl: arrayURLThree)
    }
    
    @IBAction func trainingFourBtn() {
        goToTheDetailTrainingListVC(numberTraining: "ТРЕНИРОВКА 4",
                                  trainingDescription: trainingDescriptionFour,
                                  arrayUrl: arrayURLFour)
    }
    
    @IBAction func trainingFiveBtn() {
        goToTheDetailTrainingListVC(numberTraining: "ТРЕНИРОВКА 5",
                                  trainingDescription: trainingDescriptionFive,
                                  arrayUrl: arrayURLFive)
    }
    
    @IBAction func trainingSixBtn() {
        goToTheDetailTrainingListVC(numberTraining: "ТРЕНИРОВКА 6",
                                  trainingDescription: trainingDescriptionSix,
                                  arrayUrl: arrayURLSix)
    }
    
    @IBAction func trainingSevenBtn() {
        goToTheDetailTrainingListVC(numberTraining: "ТРЕНИРОВКА 7",
                                  trainingDescription: trainingDescriptionSeven,
                                  arrayUrl: arrayURLSeven)
    }
    
    @IBAction func trainingEightBtn() {
        goToTheDetailTrainingListVC(numberTraining: "ТРЕНИРОВКА 8",
                                  trainingDescription: trainingDescriptionEight,
                                  arrayUrl: arrayURLEight)
    }
    
    @IBAction func trainingNineBtn() {
        goToTheDetailTrainingListVC(numberTraining: "ТРЕНИРОВКА 9",
                                  trainingDescription: trainingDescriptionNine,
                                  arrayUrl: arrayURLNine)
    }
    
    @IBAction func trainingTenBtn() {
        goToTheDetailTrainingListVC(numberTraining: "ТРЕНИРОВКА 10",
                                  trainingDescription: trainingDescriptionTen,
                                  arrayUrl: arrayURLTen)
    }
    
    @IBAction func trainingElevenBtn() {
        goToTheDetailTrainingListVC(numberTraining: "ТРЕНИРОВКА 11",
                                  trainingDescription: trainingDescriptionEleven,
                                  arrayUrl: arrayURLEleven)
    }
    
    @IBAction func trainingTwelveBtn() {
        goToTheDetailTrainingListVC(numberTraining: "ТРЕНИРОВКА 12",
                                  trainingDescription: trainingDescriptionTwelve,
                                  arrayUrl: arrayURLTwelve)
    }
    
    @IBAction func trainingThirteenBtn() {
        goToTheDetailTrainingListVC(numberTraining: "ТРЕНИРОВКА 13",
                                  trainingDescription: trainingDescriptionThirteen,
                                  arrayUrl: arrayURLThirteen)
    }
    
    @IBAction func exitAction() {
         self.dismiss(animated: false)
     }
    
    private func goToTheDetailTrainingListVC(numberTraining: String, trainingDescription: String, arrayUrl: [URL] ) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let detailList = storyboard.instantiateViewController(withIdentifier: "DetailTrainingListVC") as? DetailTrainingListVC {
            detailList.modalPresentationStyle = .fullScreen
            detailList.numberTraining = numberTraining
            detailList.trainingDescription = trainingDescription
            detailList.arrayUrl = arrayUrl
            self.present(detailList, animated: true, completion: nil)
        }
    }
}
