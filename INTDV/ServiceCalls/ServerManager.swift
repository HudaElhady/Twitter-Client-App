//
//  ServerManager.swift
//  INTDV
//
//  Created by MIS on 8/7/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit
import Alamofire


enum ErrorCode:Int
{
    case Caneled = -999
    case NoInternet = -1009
    case UnKnown = 000
}

struct Resource<A>
{
    var url: String
    let httpmethod: Alamofire.HTTPMethod
    let parse: (Any) -> A?
}

class ServerManager: NSObject
{
    var request:DataRequest?
    //Authentication
    private var headers = ["Content-Type": "application/json", "Accept": "application/json"]
    //MARK: - HTTPHandling -
    func httpConnect<A>(resource:Resource<A>, paramters:[String:Any]?, authentication:String?,AdditionalHeaders : [String:String]? = [:] , complation: @escaping (A?, Any?) -> (), errorHandler: @escaping (ErrorCode, Any?) -> ()  ) -> DataRequest?
    {
        
        let url = resource.url
        if let auth = authentication
        {
            headers["Authorization"] = "bearer \(auth)"
        }
        if AdditionalHeaders != nil {
            
            for header in AdditionalHeaders!{
                
                headers[header.key] = header.value
            }
        }
        request = Alamofire.request(url, method: resource.httpmethod, parameters: paramters, encoding: JSONEncoding.default, headers: headers).validate(statusCode: 200..<500).responseJSON
            { response in
                switch response.result
                {
                case .success:
                    let value = response.result.value
                    let parse = resource.parse
                    let result = value.flatMap(parse)
                    DispatchQueue.main.async
                        {
                            complation(result, value)
                    }
                case .failure(let error):
                    DispatchQueue.main.async
                        {
                            if let errorEnum = ErrorCode(rawValue: error._code)
                            {
                                errorHandler(errorEnum, error)
                            }
                            else
                            {
                                errorHandler(ErrorCode(rawValue: 000)!, error)
                            }
                    }
                }
        }
        return request
    }

    // MARK:- Bearer Token
    // somehow not working with alamofire
    func getBearerToken(completion:@escaping (_ bearerToken: String) ->Void) {
        let request = NSMutableURLRequest(url:URL(string: BearerTokenURL)!)
        
        request.httpMethod = "POST"
        request.addValue("Basic " + getBase64EncodeString(), forHTTPHeaderField: "Authorization")
        request.addValue("application/x-www-form-urlencoded;charset=UTF-8", forHTTPHeaderField: "Content-Type")
        request.addValue("*",  forHTTPHeaderField:"Access-Control-Allow-Origin")
         request.addValue("XMLHttpRequest",  forHTTPHeaderField:"X-Requested-With")
        let grantType =  "grant_type=client_credentials"
        request.httpBody = grantType.data(using: String.Encoding.utf8)
        URLSession.shared .dataTask(with: request as URLRequest, completionHandler: { (data: Data?, response:URLResponse?, error: Error?) -> Void in
            
            do {
                if let results: NSDictionary = try JSONSerialization .jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments  ) as? NSDictionary {
                    if let token = results["access_token"] as? String {
                        completion(token)
                    } 
                }
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }).resume()
    }
    
    
    // MARK:- base64Encode String
    
    func getBase64EncodeString() -> String {
        
        let consumerKeyRFC1738 = consumerKey.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)
        let consumerSecretRFC1738 = consumerSecret.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)
        let concatenateKeyAndSecret = consumerKeyRFC1738! + ":" + consumerSecretRFC1738!
        let secretAndKeyData = concatenateKeyAndSecret.data(using: String.Encoding.ascii, allowLossyConversion: true)
        let base64EncodeKeyAndSecret = secretAndKeyData?.base64EncodedString(options: NSData.Base64EncodingOptions())
        return base64EncodeKeyAndSecret!
    }
    
    
}



