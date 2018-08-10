//
//  LoginModel.swift
//  INTDV
//
//  Created by MIS on 8/8/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit

class LoginModel: NSObject {
    static let getInstance = LoginModel()
    func saveUser(_ user : LoginSession) {
        let encodedObject = NSKeyedArchiver.archivedData(withRootObject: user)
        UserDefaults.standard.set(encodedObject, forKey: SessionData)
        UserDefaults.standard.synchronize()
    }
    
    
    func getUser() -> LoginSession?  {
        let data = UserDefaults.standard.data(forKey: SessionData)
        if data != nil
        {
            let obj = NSKeyedUnarchiver.unarchiveObject(with: data!)
            return obj as? LoginSession
        }
        return nil
    }
}
