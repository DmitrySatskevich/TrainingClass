//
//  UserRegistrationModel.swift
//  TrainingClass
//
//  Created by dzmitry on 5.02.23.
//

import Foundation
import Firebase

struct User {
    let uid: String
    let email: String
    
    init(user: Firebase.User) {
        self.uid = user.uid
        self.email = user.email ?? ""
    }
}
