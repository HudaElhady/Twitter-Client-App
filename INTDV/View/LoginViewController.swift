//
//  ViewController.swift
//  INTDV
//
//  Created by MIS on 7/26/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit
import TwitterKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addloginButton()
    }
    
    func addloginButton() {
        let logInButton = TWTRLogInButton(logInCompletion: { session, error in
            if let obj = session {
                self.saveUser(session: obj)
                self.displayFollowersList()
            }else {
                if let errorMsg = error?.localizedDescription
                {
                    showAlert(title: "", message: errorMsg, vc: self, closure: nil)
                }
            }
        })
        logInButton.center = self.view.center
        self.view.addSubview(logInButton)
    }
    
    func saveUser(session : TWTRSession) {
        let sessionObj = LoginSession()
        sessionObj.authToken = session.authToken
        sessionObj.userID = session.userID
        sessionObj.userName = session.userName
        let loginObj = LoginModel.getInstance
        loginObj.saveUser(sessionObj)
    }
    
    func displayFollowersList()  {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let followersVC = storyboard.instantiateViewController(withIdentifier: "FollowersListNavigationController") as! UINavigationController
        let appDelegate = UIApplication.shared.delegate
        appDelegate?.window??.rootViewController = followersVC
    }
}

