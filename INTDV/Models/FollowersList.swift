//
//    FollowersList.swift
//
//    Create by MIS on 7/8/2018
//    Copyright © 2018. All rights reserved.
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class FollowersList : NSObject, NSCoding{
    
    var nextCursor : Int!
    var nextCursorStr : String!
    var previousCursor : Int!
    var previousCursorStr : String!
    var users : [User]!
    
    
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        nextCursor = dictionary["next_cursor"] as? Int
        nextCursorStr = dictionary["next_cursor_str"] as? String
        previousCursor = dictionary["previous_cursor"] as? Int
        previousCursorStr = dictionary["previous_cursor_str"] as? String
        users = [User]()
        if let usersArray = dictionary["users"] as? [[String:Any]]{
            for dic in usersArray{
                let value = User(fromDictionary: dic)
                users.append(value)
            }
        }
    }
    
    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if nextCursor != nil{
            dictionary["next_cursor"] = nextCursor
        }
        if nextCursorStr != nil{
            dictionary["next_cursor_str"] = nextCursorStr
        }
        if previousCursor != nil{
            dictionary["previous_cursor"] = previousCursor
        }
        if previousCursorStr != nil{
            dictionary["previous_cursor_str"] = previousCursorStr
        }
        if users != nil{
            var dictionaryElements = [[String:Any]]()
            for usersElement in users {
                dictionaryElements.append(usersElement.toDictionary())
            }
            dictionary["users"] = dictionaryElements
        }
        return dictionary
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        nextCursor = aDecoder.decodeObject(forKey: "next_cursor") as? Int
        nextCursorStr = aDecoder.decodeObject(forKey: "next_cursor_str") as? String
        previousCursor = aDecoder.decodeObject(forKey: "previous_cursor") as? Int
        previousCursorStr = aDecoder.decodeObject(forKey: "previous_cursor_str") as? String
        users = aDecoder.decodeObject(forKey :"users") as? [User]
        
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if nextCursor != nil{
            aCoder.encode(nextCursor, forKey: "next_cursor")
        }
        if nextCursorStr != nil{
            aCoder.encode(nextCursorStr, forKey: "next_cursor_str")
        }
        if previousCursor != nil{
            aCoder.encode(previousCursor, forKey: "previous_cursor")
        }
        if previousCursorStr != nil{
            aCoder.encode(previousCursorStr, forKey: "previous_cursor_str")
        }
        if users != nil{
            aCoder.encode(users, forKey: "users")
        }
        
    }
    
}
