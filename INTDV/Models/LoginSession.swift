//
//  SessionData.swift
//  INTDV
//
//  Created by MIS on 8/8/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit

class LoginSession: NSObject , NSCoding {
    var authToken : String!
    var userID : String!
    var userName : String!
    var accessToken : String!
    
    
    override init() {
        super.init()
    }
    
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        authToken = dictionary["authToken"] as? String
        userID = dictionary["userID"] as? String
        userName = dictionary["userName"] as? String
        accessToken = dictionary["access_token"] as? String
    }
    
    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if authToken != nil{
            dictionary["authToken"] = authToken
        }
        if userID != nil{
            dictionary["userID"] = userID
        }
        if userName != nil{
            dictionary["userName"] = userName
        }
        if accessToken != nil{
            dictionary["access_token"] = userName
        }
        return dictionary
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        authToken = aDecoder.decodeObject(forKey: "authToken") as? String
        userID = aDecoder.decodeObject(forKey: "userID") as? String
        userName = aDecoder.decodeObject(forKey: "userName") as? String
        accessToken = aDecoder.decodeObject(forKey: "access_token") as? String
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if authToken != nil{
            aCoder.encode(authToken, forKey: "authToken")
        }
        if userID != nil{
            aCoder.encode(userID, forKey: "userID")
        }
        if userName != nil{
            aCoder.encode(userName, forKey: "userName")
        }
        if accessToken != nil{
            aCoder.encode(accessToken, forKey: "access_token")
        }
    }

}
