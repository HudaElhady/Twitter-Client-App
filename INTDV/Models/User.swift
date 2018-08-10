//
//    User.swift
//
//    Create by MIS on 8/8/2018
//    Copyright © 2018. All rights reserved.
//    Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class User : NSObject, NSCoding{
    
    var blockedBy : String!
    var blocking : String!
    var contributorsEnabled : Bool!
    var createdAt : String!
    var defaultProfile : Bool!
    var defaultProfileImage : Bool!
    var descriptionField : String!
    var favouritesCount : Int!
    var followRequestSent : String!
    var followersCount : Int!
    var following : String!
    var friendsCount : Int!
    var geoEnabled : Bool!
    var hasExtendedProfile : Bool!
    var id : Int!
    var idStr : String!
    var isTranslationEnabled : Bool!
    var isTranslator : Bool!
    var lang : String!
    var listedCount : Int!
    var location : String!
    var muting : String!
    var name : String!
    var notifications : String!
    var profileBackgroundColor : String!
    var profileBackgroundImageUrl : String!
    var profileBackgroundImageUrlHttps : String!
    var profileBackgroundTile : Bool!
    var profileBannerUrl : String!
    var profileImageUrl : String!
    var profileImageUrlHttps : String!
    var profileLinkColor : String!
    var profileSidebarBorderColor : String!
    var profileSidebarFillColor : String!
    var profileTextColor : String!
    var profileUseBackgroundImage : Bool!
    var protectedField : Bool!
    var screenName : String!
    var statusesCount : Int!
    var timeZone : String!
    var translatorType : String!
    var url : String!
    var utcOffset : String!
    var verified : Bool!
    
    
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        blockedBy = dictionary["blocked_by"] as? String
        blocking = dictionary["blocking"] as? String
        contributorsEnabled = dictionary["contributors_enabled"] as? Bool
        createdAt = dictionary["created_at"] as? String
        defaultProfile = dictionary["default_profile"] as? Bool
        defaultProfileImage = dictionary["default_profile_image"] as? Bool
        descriptionField = dictionary["description"] as? String
        favouritesCount = dictionary["favourites_count"] as? Int
        followRequestSent = dictionary["follow_request_sent"] as? String
        followersCount = dictionary["followers_count"] as? Int
        following = dictionary["following"] as? String
        friendsCount = dictionary["friends_count"] as? Int
        geoEnabled = dictionary["geo_enabled"] as? Bool
        hasExtendedProfile = dictionary["has_extended_profile"] as? Bool
        id = dictionary["id"] as? Int
        idStr = dictionary["id_str"] as? String
        isTranslationEnabled = dictionary["is_translation_enabled"] as? Bool
        isTranslator = dictionary["is_translator"] as? Bool
        lang = dictionary["lang"] as? String
        listedCount = dictionary["listed_count"] as? Int
        location = dictionary["location"] as? String
        muting = dictionary["muting"] as? String
        name = dictionary["name"] as? String
        notifications = dictionary["notifications"] as? String
        profileBackgroundColor = dictionary["profile_background_color"] as? String
        profileBackgroundImageUrl = dictionary["profile_background_image_url"] as? String
        profileBackgroundImageUrlHttps = dictionary["profile_background_image_url_https"] as? String
        profileBackgroundTile = dictionary["profile_background_tile"] as? Bool
        profileBannerUrl = dictionary["profile_banner_url"] as? String
        profileImageUrl = dictionary["profile_image_url"] as? String
        profileImageUrlHttps = dictionary["profile_image_url_https"] as? String
        profileLinkColor = dictionary["profile_link_color"] as? String
        profileSidebarBorderColor = dictionary["profile_sidebar_border_color"] as? String
        profileSidebarFillColor = dictionary["profile_sidebar_fill_color"] as? String
        profileTextColor = dictionary["profile_text_color"] as? String
        profileUseBackgroundImage = dictionary["profile_use_background_image"] as? Bool
        protectedField = dictionary["protected"] as? Bool
        screenName = dictionary["screen_name"] as? String
        statusesCount = dictionary["statuses_count"] as? Int
        timeZone = dictionary["time_zone"] as? String
        translatorType = dictionary["translator_type"] as? String
        url = dictionary["url"] as? String
        utcOffset = dictionary["utc_offset"] as? String
        verified = dictionary["verified"] as? Bool
    }
    
    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if blockedBy != nil{
            dictionary["blocked_by"] = blockedBy
        }
        if blocking != nil{
            dictionary["blocking"] = blocking
        }
        if contributorsEnabled != nil{
            dictionary["contributors_enabled"] = contributorsEnabled
        }
        if createdAt != nil{
            dictionary["created_at"] = createdAt
        }
        if defaultProfile != nil{
            dictionary["default_profile"] = defaultProfile
        }
        if defaultProfileImage != nil{
            dictionary["default_profile_image"] = defaultProfileImage
        }
        if descriptionField != nil{
            dictionary["description"] = descriptionField
        }
        if favouritesCount != nil{
            dictionary["favourites_count"] = favouritesCount
        }
        if followRequestSent != nil{
            dictionary["follow_request_sent"] = followRequestSent
        }
        if followersCount != nil{
            dictionary["followers_count"] = followersCount
        }
        if following != nil{
            dictionary["following"] = following
        }
        if friendsCount != nil{
            dictionary["friends_count"] = friendsCount
        }
        if geoEnabled != nil{
            dictionary["geo_enabled"] = geoEnabled
        }
        if hasExtendedProfile != nil{
            dictionary["has_extended_profile"] = hasExtendedProfile
        }
        if id != nil{
            dictionary["id"] = id
        }
        if idStr != nil{
            dictionary["id_str"] = idStr
        }
        if isTranslationEnabled != nil{
            dictionary["is_translation_enabled"] = isTranslationEnabled
        }
        if isTranslator != nil{
            dictionary["is_translator"] = isTranslator
        }
        if lang != nil{
            dictionary["lang"] = lang
        }
        if listedCount != nil{
            dictionary["listed_count"] = listedCount
        }
        if location != nil{
            dictionary["location"] = location
        }
        if muting != nil{
            dictionary["muting"] = muting
        }
        if name != nil{
            dictionary["name"] = name
        }
        if notifications != nil{
            dictionary["notifications"] = notifications
        }
        if profileBackgroundColor != nil{
            dictionary["profile_background_color"] = profileBackgroundColor
        }
        if profileBackgroundImageUrl != nil{
            dictionary["profile_background_image_url"] = profileBackgroundImageUrl
        }
        if profileBackgroundImageUrlHttps != nil{
            dictionary["profile_background_image_url_https"] = profileBackgroundImageUrlHttps
        }
        if profileBackgroundTile != nil{
            dictionary["profile_background_tile"] = profileBackgroundTile
        }
        if profileBannerUrl != nil{
            dictionary["profile_banner_url"] = profileBannerUrl
        }
        if profileImageUrl != nil{
            dictionary["profile_image_url"] = profileImageUrl
        }
        if profileImageUrlHttps != nil{
            dictionary["profile_image_url_https"] = profileImageUrlHttps
        }
        if profileLinkColor != nil{
            dictionary["profile_link_color"] = profileLinkColor
        }
        if profileSidebarBorderColor != nil{
            dictionary["profile_sidebar_border_color"] = profileSidebarBorderColor
        }
        if profileSidebarFillColor != nil{
            dictionary["profile_sidebar_fill_color"] = profileSidebarFillColor
        }
        if profileTextColor != nil{
            dictionary["profile_text_color"] = profileTextColor
        }
        if profileUseBackgroundImage != nil{
            dictionary["profile_use_background_image"] = profileUseBackgroundImage
        }
        if protectedField != nil{
            dictionary["protected"] = protectedField
        }
        if screenName != nil{
            dictionary["screen_name"] = screenName
        }
        if statusesCount != nil{
            dictionary["statuses_count"] = statusesCount
        }
        if timeZone != nil{
            dictionary["time_zone"] = timeZone
        }
        if translatorType != nil{
            dictionary["translator_type"] = translatorType
        }
        if url != nil{
            dictionary["url"] = url
        }
        if utcOffset != nil{
            dictionary["utc_offset"] = utcOffset
        }
        if verified != nil{
            dictionary["verified"] = verified
        }
        return dictionary
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        blockedBy = aDecoder.decodeObject(forKey: "blocked_by") as? String
        blocking = aDecoder.decodeObject(forKey: "blocking") as? String
        contributorsEnabled = aDecoder.decodeObject(forKey: "contributors_enabled") as? Bool
        createdAt = aDecoder.decodeObject(forKey: "created_at") as? String
        defaultProfile = aDecoder.decodeObject(forKey: "default_profile") as? Bool
        defaultProfileImage = aDecoder.decodeObject(forKey: "default_profile_image") as? Bool
        descriptionField = aDecoder.decodeObject(forKey: "description") as? String
        favouritesCount = aDecoder.decodeObject(forKey: "favourites_count") as? Int
        followRequestSent = aDecoder.decodeObject(forKey: "follow_request_sent") as? String
        followersCount = aDecoder.decodeObject(forKey: "followers_count") as? Int
        following = aDecoder.decodeObject(forKey: "following") as? String
        friendsCount = aDecoder.decodeObject(forKey: "friends_count") as? Int
        geoEnabled = aDecoder.decodeObject(forKey: "geo_enabled") as? Bool
        hasExtendedProfile = aDecoder.decodeObject(forKey: "has_extended_profile") as? Bool
        id = aDecoder.decodeObject(forKey: "id") as? Int
        idStr = aDecoder.decodeObject(forKey: "id_str") as? String
        isTranslationEnabled = aDecoder.decodeObject(forKey: "is_translation_enabled") as? Bool
        isTranslator = aDecoder.decodeObject(forKey: "is_translator") as? Bool
        lang = aDecoder.decodeObject(forKey: "lang") as? String
        listedCount = aDecoder.decodeObject(forKey: "listed_count") as? Int
        location = aDecoder.decodeObject(forKey: "location") as? String
        muting = aDecoder.decodeObject(forKey: "muting") as? String
        name = aDecoder.decodeObject(forKey: "name") as? String
        notifications = aDecoder.decodeObject(forKey: "notifications") as? String
        profileBackgroundColor = aDecoder.decodeObject(forKey: "profile_background_color") as? String
        profileBackgroundImageUrl = aDecoder.decodeObject(forKey: "profile_background_image_url") as? String
        profileBackgroundImageUrlHttps = aDecoder.decodeObject(forKey: "profile_background_image_url_https") as? String
        profileBackgroundTile = aDecoder.decodeObject(forKey: "profile_background_tile") as? Bool
        profileBannerUrl = aDecoder.decodeObject(forKey: "profile_banner_url") as? String
        profileImageUrl = aDecoder.decodeObject(forKey: "profile_image_url") as? String
        profileImageUrlHttps = aDecoder.decodeObject(forKey: "profile_image_url_https") as? String
        profileLinkColor = aDecoder.decodeObject(forKey: "profile_link_color") as? String
        profileSidebarBorderColor = aDecoder.decodeObject(forKey: "profile_sidebar_border_color") as? String
        profileSidebarFillColor = aDecoder.decodeObject(forKey: "profile_sidebar_fill_color") as? String
        profileTextColor = aDecoder.decodeObject(forKey: "profile_text_color") as? String
        profileUseBackgroundImage = aDecoder.decodeObject(forKey: "profile_use_background_image") as? Bool
        protectedField = aDecoder.decodeObject(forKey: "protected") as? Bool
        screenName = aDecoder.decodeObject(forKey: "screen_name") as? String
        statusesCount = aDecoder.decodeObject(forKey: "statuses_count") as? Int
        timeZone = aDecoder.decodeObject(forKey: "time_zone") as? String
        translatorType = aDecoder.decodeObject(forKey: "translator_type") as? String
        url = aDecoder.decodeObject(forKey: "url") as? String
        utcOffset = aDecoder.decodeObject(forKey: "utc_offset") as? String
        verified = aDecoder.decodeObject(forKey: "verified") as? Bool
        
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if blockedBy != nil{
            aCoder.encode(blockedBy, forKey: "blocked_by")
        }
        if blocking != nil{
            aCoder.encode(blocking, forKey: "blocking")
        }
        if contributorsEnabled != nil{
            aCoder.encode(contributorsEnabled, forKey: "contributors_enabled")
        }
        if createdAt != nil{
            aCoder.encode(createdAt, forKey: "created_at")
        }
        if defaultProfile != nil{
            aCoder.encode(defaultProfile, forKey: "default_profile")
        }
        if defaultProfileImage != nil{
            aCoder.encode(defaultProfileImage, forKey: "default_profile_image")
        }
        if descriptionField != nil{
            aCoder.encode(descriptionField, forKey: "description")
        }
        if favouritesCount != nil{
            aCoder.encode(favouritesCount, forKey: "favourites_count")
        }
        if followRequestSent != nil{
            aCoder.encode(followRequestSent, forKey: "follow_request_sent")
        }
        if followersCount != nil{
            aCoder.encode(followersCount, forKey: "followers_count")
        }
        if following != nil{
            aCoder.encode(following, forKey: "following")
        }
        if friendsCount != nil{
            aCoder.encode(friendsCount, forKey: "friends_count")
        }
        if geoEnabled != nil{
            aCoder.encode(geoEnabled, forKey: "geo_enabled")
        }
        if hasExtendedProfile != nil{
            aCoder.encode(hasExtendedProfile, forKey: "has_extended_profile")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if idStr != nil{
            aCoder.encode(idStr, forKey: "id_str")
        }
        if isTranslationEnabled != nil{
            aCoder.encode(isTranslationEnabled, forKey: "is_translation_enabled")
        }
        if isTranslator != nil{
            aCoder.encode(isTranslator, forKey: "is_translator")
        }
        if lang != nil{
            aCoder.encode(lang, forKey: "lang")
        }
        if listedCount != nil{
            aCoder.encode(listedCount, forKey: "listed_count")
        }
        if location != nil{
            aCoder.encode(location, forKey: "location")
        }
        if muting != nil{
            aCoder.encode(muting, forKey: "muting")
        }
        if name != nil{
            aCoder.encode(name, forKey: "name")
        }
        if notifications != nil{
            aCoder.encode(notifications, forKey: "notifications")
        }
        if profileBackgroundColor != nil{
            aCoder.encode(profileBackgroundColor, forKey: "profile_background_color")
        }
        if profileBackgroundImageUrl != nil{
            aCoder.encode(profileBackgroundImageUrl, forKey: "profile_background_image_url")
        }
        if profileBackgroundImageUrlHttps != nil{
            aCoder.encode(profileBackgroundImageUrlHttps, forKey: "profile_background_image_url_https")
        }
        if profileBackgroundTile != nil{
            aCoder.encode(profileBackgroundTile, forKey: "profile_background_tile")
        }
        if profileBannerUrl != nil{
            aCoder.encode(profileBannerUrl, forKey: "profile_banner_url")
        }
        if profileImageUrl != nil{
            aCoder.encode(profileImageUrl, forKey: "profile_image_url")
        }
        if profileImageUrlHttps != nil{
            aCoder.encode(profileImageUrlHttps, forKey: "profile_image_url_https")
        }
        if profileLinkColor != nil{
            aCoder.encode(profileLinkColor, forKey: "profile_link_color")
        }
        if profileSidebarBorderColor != nil{
            aCoder.encode(profileSidebarBorderColor, forKey: "profile_sidebar_border_color")
        }
        if profileSidebarFillColor != nil{
            aCoder.encode(profileSidebarFillColor, forKey: "profile_sidebar_fill_color")
        }
        if profileTextColor != nil{
            aCoder.encode(profileTextColor, forKey: "profile_text_color")
        }
        if profileUseBackgroundImage != nil{
            aCoder.encode(profileUseBackgroundImage, forKey: "profile_use_background_image")
        }
        if protectedField != nil{
            aCoder.encode(protectedField, forKey: "protected")
        }
        if screenName != nil{
            aCoder.encode(screenName, forKey: "screen_name")
        }
        if statusesCount != nil{
            aCoder.encode(statusesCount, forKey: "statuses_count")
        }
        if timeZone != nil{
            aCoder.encode(timeZone, forKey: "time_zone")
        }
        if translatorType != nil{
            aCoder.encode(translatorType, forKey: "translator_type")
        }
        if url != nil{
            aCoder.encode(url, forKey: "url")
        }
        if utcOffset != nil{
            aCoder.encode(utcOffset, forKey: "utc_offset")
        }
        if verified != nil{
            aCoder.encode(verified, forKey: "verified")
        }
        
    }
    
}
