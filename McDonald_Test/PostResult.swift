//
//	RootClass.swift
//
//  Created by Jayrajkumar Gohil on 2/27/17.
//  Copyright © 2017 Jayrajkumar Gohil. All rights reserved.
//

import Foundation


class PostResult : NSObject, NSCoding{

	var body : String!
	var id : Int!
	var title : String!
	var userId : Int!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		body = dictionary["body"] as? String
		id = dictionary["id"] as? Int
		title = dictionary["title"] as? String
		userId = dictionary["userId"] as? Int
	}

	/**
	 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if body != nil{
			dictionary["body"] = body
		}
		if id != nil{
			dictionary["id"] = id
		}
		if title != nil{
			dictionary["title"] = title
		}
		if userId != nil{
			dictionary["userId"] = userId
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         body = aDecoder.decodeObject(forKey: "body") as? String
         id = aDecoder.decodeObject(forKey: "id") as? Int
         title = aDecoder.decodeObject(forKey: "title") as? String
         userId = aDecoder.decodeObject(forKey: "userId") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encodeWithCoder(aCoder: NSCoder)
	{
		if body != nil{
			aCoder.encode(body, forKey: "body")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if title != nil{
			aCoder.encode(title, forKey: "title")
		}
		if userId != nil{
			aCoder.encode(userId, forKey: "userId")
		}

	}

    public func encode(with aCoder: NSCoder) {
        if body != nil{
            aCoder.encode(body, forKey: "body")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if title != nil{
            aCoder.encode(title, forKey: "title")
        }
        if userId != nil{
            aCoder.encode(userId, forKey: "userId")
        }
    }
}
