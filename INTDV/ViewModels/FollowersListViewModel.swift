//
//  FollowersListViewModel.swift
//  INTDV
//
//  Created by MIS on 8/10/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit

class FollowersListViewModel: NSObject {
    
    var updateTable: (()->())!
    var handleError : ((ErrorCode)->())!
    var followers = [User](){
        didSet{
            if updateTable != nil {
                self.updateTable()
            }
        }
    }
    
   
   @objc func getFollowers()  {
        if let loginObj = LoginModel().getUser()
        {
            let t = TwitterCalls()
            t.getFollowersListWithToken(userName: loginObj.userName, complation: { (json) in
                if let result = json , let users = result.users,users.count>0
                {
                    self.followers.removeAll()
                    self.followers = users
                }
            }, errorHandler: { (errorCode) in
                if self.handleError != nil
                {
                    self.handleError!(errorCode)
                }
            })
        }
    }
    
}
