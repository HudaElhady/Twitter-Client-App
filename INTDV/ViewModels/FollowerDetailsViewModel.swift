//
//  FollowerDetailsViewModel.swift
//  INTDV
//
//  Created by MIS on 8/10/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit

class FollowerDetailsViewModel: NSObject {
    var updateTable: (()->())!
    var handleError : ((ErrorCode)->())!
    var tweetsArr = [TweetData](){
        didSet{
            if updateTable != nil {
                updateTable()
            }
        }
    }
    
    func getTweets(userName : String)  {
        
        let t = TwitterCalls()
        t.getTweetsListWithToken(userName: userName, complation: { json in
            if let result = json , result.count > 0
            {
                self.tweetsArr = result
            }
        }, errorHandler: { (errorCode) in
            if self.handleError != nil
            {
                self.handleError!(errorCode)
            }
        })
        
    }
}
