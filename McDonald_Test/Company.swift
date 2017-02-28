//
//	Company.swift
//
//  Created by Jayrajkumar Gohil on 2/27/17.
//  Copyright © 2017 Jayrajkumar Gohil. All rights reserved.
//

import Foundation


class Company : NSObject, NSCoding{

	var bs : String!
	var catchPhrase : String!
	var name : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		bs = dictionary["bs"] as? String
		catchPhrase = dictionary["catchPhrase"] as? String
		name = dictionary["name"] as? String
	}

	/**
	 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if bs != nil{
			dictionary["bs"] = bs
		}
		if catchPhrase != nil{
			dictionary["catchPhrase"] = catchPhrase
		}
		if name != nil{
			dictionary["name"] = name
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         bs = aDecoder.decodeObject(forKey: "bs") as? String
         catchPhrase = aDecoder.decodeObject(forKey: "catchPhrase") as? String
         name = aDecoder.decodeObject(forKey: "name") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encodeWithCoder(aCoder: NSCoder)
	{
		if bs != nil{
			aCoder.encode(bs, forKey: "bs")
		}
		if catchPhrase != nil{
			aCoder.encode(catchPhrase, forKey: "catchPhrase")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}

	}

    public func encode(with aCoder: NSCoder) {
        if bs != nil{
            aCoder.encode(bs, forKey: "bs")
        }
        if catchPhrase != nil{
            aCoder.encode(catchPhrase, forKey: "catchPhrase")
        }
        if name != nil{
            aCoder.encode(name, forKey: "name")
        }
    }
}
