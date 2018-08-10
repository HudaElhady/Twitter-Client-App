//
//  TweetData.swift
//  INTDV
//
//  Created by MIS on 8/9/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit

class TweetData: NSObject, NSCoding{
    
    var contributors : String!
    var coordinates : String!
    var createdAt : String!
    var favoriteCount : Int!
    var favorited : Bool!
    var geo : String!
    var id : Int!
    var idStr : String!
    var inReplyToScreenName : String!
    var inReplyToStatusId : String!
    var inReplyToStatusIdStr : String!
    var inReplyToUserId : String!
    var inReplyToUserIdStr : String!
    var isQuoteStatus : Bool!
    var lang : String!
    var place : String!
    var possiblySensitive : Bool!
    var quotedStatus : QuotedStatus!
    var quotedStatusId : Int!
    var quotedStatusIdStr : String!
    var retweetCount : Int!
    var retweeted : Bool!
    var source : String!
    var text : String!
    var truncated : Bool!
    var user : User!
    
    
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        contributors = dictionary["contributors"] as? String
        coordinates = dictionary["coordinates"] as? String
        createdAt = dictionary["created_at"] as? String
        
        favoriteCount = dictionary["favorite_count"] as? Int
        favorited = dictionary["favorited"] as? Bool
        geo = dictionary["geo"] as? String
        id = dictionary["id"] as? Int
        idStr = dictionary["id_str"] as? String
        inReplyToScreenName = dictionary["in_reply_to_screen_name"] as? String
        inReplyToStatusId = dictionary["in_reply_to_status_id"] as? String
        inReplyToStatusIdStr = dictionary["in_reply_to_status_id_str"] as? String
        inReplyToUserId = dictionary["in_reply_to_user_id"] as? String
        inReplyToUserIdStr = dictionary["in_reply_to_user_id_str"] as? String
        isQuoteStatus = dictionary["is_quote_status"] as? Bool
        lang = dictionary["lang"] as? String
        place = dictionary["place"] as? String
        possiblySensitive = dictionary["possibly_sensitive"] as? Bool
        if let quotedStatusData = dictionary["quoted_status"] as? [String:Any]{
            quotedStatus = QuotedStatus(fromDictionary: quotedStatusData)
        }
        quotedStatusId = dictionary["quoted_status_id"] as? Int
        quotedStatusIdStr = dictionary["quoted_status_id_str"] as? String
        retweetCount = dictionary["retweet_count"] as? Int
        retweeted = dictionary["retweeted"] as? Bool
        source = dictionary["source"] as? String
        text = dictionary["text"] as? String
        truncated = dictionary["truncated"] as? Bool
        if let userData = dictionary["user"] as? [String:Any]{
            user = User(fromDictionary: userData)
        }
    }
    
    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if contributors != nil{
            dictionary["contributors"] = contributors
        }
        if coordinates != nil{
            dictionary["coordinates"] = coordinates
        }
        if createdAt != nil{
            dictionary["created_at"] = createdAt
        }
        
        if favoriteCount != nil{
            dictionary["favorite_count"] = favoriteCount
        }
        if favorited != nil{
            dictionary["favorited"] = favorited
        }
        if geo != nil{
            dictionary["geo"] = geo
        }
        if id != nil{
            dictionary["id"] = id
        }
        if idStr != nil{
            dictionary["id_str"] = idStr
        }
        if inReplyToScreenName != nil{
            dictionary["in_reply_to_screen_name"] = inReplyToScreenName
        }
        if inReplyToStatusId != nil{
            dictionary["in_reply_to_status_id"] = inReplyToStatusId
        }
        if inReplyToStatusIdStr != nil{
            dictionary["in_reply_to_status_id_str"] = inReplyToStatusIdStr
        }
        if inReplyToUserId != nil{
            dictionary["in_reply_to_user_id"] = inReplyToUserId
        }
        if inReplyToUserIdStr != nil{
            dictionary["in_reply_to_user_id_str"] = inReplyToUserIdStr
        }
        if isQuoteStatus != nil{
            dictionary["is_quote_status"] = isQuoteStatus
        }
        if lang != nil{
            dictionary["lang"] = lang
        }
        if place != nil{
            dictionary["place"] = place
        }
        if possiblySensitive != nil{
            dictionary["possibly_sensitive"] = possiblySensitive
        }
        if quotedStatus != nil{
            dictionary["quoted_status"] = quotedStatus.toDictionary()
        }
        if quotedStatusId != nil{
            dictionary["quoted_status_id"] = quotedStatusId
        }
        if quotedStatusIdStr != nil{
            dictionary["quoted_status_id_str"] = quotedStatusIdStr
        }
        if retweetCount != nil{
            dictionary["retweet_count"] = retweetCount
        }
        if retweeted != nil{
            dictionary["retweeted"] = retweeted
        }
        if source != nil{
            dictionary["source"] = source
        }
        if text != nil{
            dictionary["text"] = text
        }
        if truncated != nil{
            dictionary["truncated"] = truncated
        }
        if user != nil{
            dictionary["user"] = user.toDictionary()
        }
        return dictionary
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        contributors = aDecoder.decodeObject(forKey: "contributors") as? String
        coordinates = aDecoder.decodeObject(forKey: "coordinates") as? String
        createdAt = aDecoder.decodeObject(forKey: "created_at") as? String
        favoriteCount = aDecoder.decodeObject(forKey: "favorite_count") as? Int
        favorited = aDecoder.decodeObject(forKey: "favorited") as? Bool
        geo = aDecoder.decodeObject(forKey: "geo") as? String
        id = aDecoder.decodeObject(forKey: "id") as? Int
        idStr = aDecoder.decodeObject(forKey: "id_str") as? String
        inReplyToScreenName = aDecoder.decodeObject(forKey: "in_reply_to_screen_name") as? String
        inReplyToStatusId = aDecoder.decodeObject(forKey: "in_reply_to_status_id") as? String
        inReplyToStatusIdStr = aDecoder.decodeObject(forKey: "in_reply_to_status_id_str") as? String
        inReplyToUserId = aDecoder.decodeObject(forKey: "in_reply_to_user_id") as? String
        inReplyToUserIdStr = aDecoder.decodeObject(forKey: "in_reply_to_user_id_str") as? String
        isQuoteStatus = aDecoder.decodeObject(forKey: "is_quote_status") as? Bool
        lang = aDecoder.decodeObject(forKey: "lang") as? String
        place = aDecoder.decodeObject(forKey: "place") as? String
        possiblySensitive = aDecoder.decodeObject(forKey: "possibly_sensitive") as? Bool
        quotedStatus = aDecoder.decodeObject(forKey: "quoted_status") as? QuotedStatus
        quotedStatusId = aDecoder.decodeObject(forKey: "quoted_status_id") as? Int
        quotedStatusIdStr = aDecoder.decodeObject(forKey: "quoted_status_id_str") as? String
        retweetCount = aDecoder.decodeObject(forKey: "retweet_count") as? Int
        retweeted = aDecoder.decodeObject(forKey: "retweeted") as? Bool
        source = aDecoder.decodeObject(forKey: "source") as? String
        text = aDecoder.decodeObject(forKey: "text") as? String
        truncated = aDecoder.decodeObject(forKey: "truncated") as? Bool
        user = aDecoder.decodeObject(forKey: "user") as? User
        
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if contributors != nil{
            aCoder.encode(contributors, forKey: "contributors")
        }
        if coordinates != nil{
            aCoder.encode(coordinates, forKey: "coordinates")
        }
        if createdAt != nil{
            aCoder.encode(createdAt, forKey: "created_at")
        }
        
        if favoriteCount != nil{
            aCoder.encode(favoriteCount, forKey: "favorite_count")
        }
        if favorited != nil{
            aCoder.encode(favorited, forKey: "favorited")
        }
        if geo != nil{
            aCoder.encode(geo, forKey: "geo")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if idStr != nil{
            aCoder.encode(idStr, forKey: "id_str")
        }
        if inReplyToScreenName != nil{
            aCoder.encode(inReplyToScreenName, forKey: "in_reply_to_screen_name")
        }
        if inReplyToStatusId != nil{
            aCoder.encode(inReplyToStatusId, forKey: "in_reply_to_status_id")
        }
        if inReplyToStatusIdStr != nil{
            aCoder.encode(inReplyToStatusIdStr, forKey: "in_reply_to_status_id_str")
        }
        if inReplyToUserId != nil{
            aCoder.encode(inReplyToUserId, forKey: "in_reply_to_user_id")
        }
        if inReplyToUserIdStr != nil{
            aCoder.encode(inReplyToUserIdStr, forKey: "in_reply_to_user_id_str")
        }
        if isQuoteStatus != nil{
            aCoder.encode(isQuoteStatus, forKey: "is_quote_status")
        }
        if lang != nil{
            aCoder.encode(lang, forKey: "lang")
        }
        if place != nil{
            aCoder.encode(place, forKey: "place")
        }
        if possiblySensitive != nil{
            aCoder.encode(possiblySensitive, forKey: "possibly_sensitive")
        }
        if quotedStatus != nil{
            aCoder.encode(quotedStatus, forKey: "quoted_status")
        }
        if quotedStatusId != nil{
            aCoder.encode(quotedStatusId, forKey: "quoted_status_id")
        }
        if quotedStatusIdStr != nil{
            aCoder.encode(quotedStatusIdStr, forKey: "quoted_status_id_str")
        }
        if retweetCount != nil{
            aCoder.encode(retweetCount, forKey: "retweet_count")
        }
        if retweeted != nil{
            aCoder.encode(retweeted, forKey: "retweeted")
        }
        if source != nil{
            aCoder.encode(source, forKey: "source")
        }
        if text != nil{
            aCoder.encode(text, forKey: "text")
        }
        if truncated != nil{
            aCoder.encode(truncated, forKey: "truncated")
        }
        if user != nil{
            aCoder.encode(user, forKey: "user")
        }
        
    }
    
}
