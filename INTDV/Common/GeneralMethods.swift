//
//  GeneralMethods.swift
//  INTDV
//
//  Created by MIS on 8/10/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit

func saveAccessToken(token : String) {
    let sessionObj = LoginModel.getInstance.getUser()
    sessionObj?.accessToken = token
    LoginModel.getInstance.saveUser(sessionObj!)
}

func showAlert(title:String, message:String, vc:UIViewController, closure:(()->())?)
{
    let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
    
    let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default)
    { (result : UIAlertAction) -> Void in
        closure?()
    }
    alertController.addAction(okAction)
    vc.present(alertController, animated: true, completion: nil)
}

