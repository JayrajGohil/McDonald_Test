//
//  ServiceManager.swift
//  McDonald_Test
//
//  Created by Jayrajkumar Gohil on 2/27/17.
//  Copyright © 2017 Jayrajkumar Gohil. All rights reserved.
//

import UIKit

class ServiceManager: NSObject {

    /*
     * This method is used to get the user list from server.
    */
    class func getUsers(completionHandler:@escaping (Bool, String, [UserResult]) -> ()) {
        
        let url = URL(string: API.Users)
    
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            var arrayUser = [UserResult]()
            
            if error == nil {
                do {
                    let parsedData = try JSONSerialization.jsonObject(with: data!, options: []) as! NSArray
                    for data in parsedData{
                        let user = UserResult(fromDictionary: data as! NSDictionary)
                        arrayUser.append(user)
                    }
                    completionHandler(true, "", arrayUser)
                    
                } catch let error as NSError {
                    completionHandler(false, error.localizedDescription, arrayUser)
                }
                
            }
            else{
                completionHandler(false, (error?.localizedDescription)!, arrayUser)
            }
        }.resume()
    }
    
    /*
     * This method is used to get the posts from server.
     */
    class func getPosts(completionHandler:@escaping (Bool, String, [PostResult]) -> ()) {
        
        let url = URL(string: API.Posts)
        
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            var arrayPosts = [PostResult]()
            
            if error == nil {
                do {
                    let parsedData = try JSONSerialization.jsonObject(with: data!, options: []) as! NSArray
                    for data in parsedData{
                        let user = PostResult(fromDictionary: data as! NSDictionary)
                        arrayPosts.append(user)
                    }
                    completionHandler(true, "", arrayPosts)
                    
                } catch let error as NSError {
                    completionHandler(false, error.localizedDescription, arrayPosts)
                }
                
            }
            else{
                completionHandler(false, (error?.localizedDescription)!, arrayPosts)
            }
            }.resume()
    }
}
