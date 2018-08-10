//
//  TwitterCalls.swift
//  INTDV
//
//  Created by MIS on 8/7/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit

class TwitterCalls: NSObject {
    
    static var followersListResource = Resource<FollowersList>(url: FollowersListURL, httpmethod: .get)
    { (json) -> FollowersList? in
        if let jsonObj = json as? [String : Any]
        {
            let content = FollowersList(fromDictionary: jsonObj)
            return content
        }
        
        
        return nil
    }
    
    static func formFollowersListUrl(userName : String)->Resource<FollowersList>
    {
        let url = "\(FollowersListURL)&screen_name=\(userName)"
        TwitterCalls.followersListResource.url = url;
        return TwitterCalls.followersListResource
    }
    
    static var tweetsListResource = Resource<[TweetData]>(url: FollowersListURL, httpmethod: .get)
    { (json) -> [TweetData]? in
         var tweets = [TweetData]()
        if let jsonObj = json as? [NSDictionary]
        {
            for (index,item) in jsonObj.enumerated()
            {

                let content = TweetData(fromDictionary: item as! [String : Any])
                tweets.append(content)
            }
            
            return tweets
        }
        
        
        return nil
    }
    
    static func formTweetssListUrl(userName : String)->Resource<[TweetData]>
    {
        let url = "\(TweetsListURL)screen_name=\(userName)"
        TwitterCalls.tweetsListResource.url = url;
        return TwitterCalls.tweetsListResource
    }
    
    //MARK: - Calls
    func getFollowersListWithToken(userName : String,complation: @escaping (FollowersList? ) -> (), errorHandler: @escaping (ErrorCode) -> ())
    {
        
        let sm = ServerManager ()
        if let loginObj = LoginModel.getInstance.getUser() , let token = loginObj.accessToken
        {
            getFollowersList(userName: userName, token: token, complation: complation, errorHandler: errorHandler)
        }else{
        sm.getBearerToken { (bearer) in
            saveAccessToken(token: bearer)
            self.getFollowersList(userName: userName, token: bearer, complation: complation, errorHandler: errorHandler)
        }
    }
    }
    func getFollowersList(userName : String,token:String,complation: @escaping (FollowersList? ) -> (), errorHandler: @escaping (ErrorCode) -> ())
    {
        
        let sm = ServerManager ()
            _ = sm.httpConnect(resource: TwitterCalls.formFollowersListUrl(userName: userName) , paramters: nil, authentication: token, complation:
                { (json, data) in
                    if let result = json
                    {
                        complation(result)
                    }
            })
            { (error, msg) in
                
                errorHandler(error)
            }
      
        
    }
    func getTweetsListWithToken(userName : String,complation: @escaping ([TweetData]? ) -> (), errorHandler: @escaping (ErrorCode) -> ())
    {
        
        let sm = ServerManager ()
        if let loginObj = LoginModel.getInstance.getUser() , let token = loginObj.accessToken
        {
           getTweetsList(userName: userName, token: token, complation: complation, errorHandler: errorHandler)
        }else{
        
        sm.getBearerToken { (bearer) in
            print(bearer)
            saveAccessToken(token: bearer)
            self.getTweetsList(userName: userName, token: bearer, complation: complation, errorHandler: errorHandler)
        }
    }
         }
        func getTweetsList(userName : String,token: String,complation: @escaping ([TweetData]? ) -> (), errorHandler: @escaping (ErrorCode) -> ())
    {
        let sm = ServerManager ()
        _ = sm.httpConnect(resource: TwitterCalls.formTweetssListUrl(userName: userName) , paramters: nil, authentication: token, complation:
            { (json, data) in
                if let result = json
                {
                    complation(result)
                }
        })
        { (error, msg) in
            
            errorHandler(error)
        }
        }
   
    
}
