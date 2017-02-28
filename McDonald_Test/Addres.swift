//
//	Addres.swift
//
//  Created by Jayrajkumar Gohil on 2/27/17.
//  Copyright © 2017 Jayrajkumar Gohil. All rights reserved.
//

import Foundation


class Addres : NSObject, NSCoding{

	var city : String!
	var geo : Geo!
	var street : String!
	var suite : String!
	var zipcode : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		city = dictionary["city"] as? String
		if let geoData = dictionary["geo"] as? NSDictionary{
			geo = Geo(fromDictionary: geoData)
		}
		street = dictionary["street"] as? String
		suite = dictionary["suite"] as? String
		zipcode = dictionary["zipcode"] as? String
	}

	/**
	 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if city != nil{
			dictionary["city"] = city
		}
		if geo != nil{
			dictionary["geo"] = geo.toDictionary()
		}
		if street != nil{
			dictionary["street"] = street
		}
		if suite != nil{
			dictionary["suite"] = suite
		}
		if zipcode != nil{
			dictionary["zipcode"] = zipcode
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         city = aDecoder.decodeObject(forKey: "city") as? String
         geo = aDecoder.decodeObject(forKey: "geo") as? Geo
         street = aDecoder.decodeObject(forKey: "street") as? String
         suite = aDecoder.decodeObject(forKey: "suite") as? String
         zipcode = aDecoder.decodeObject(forKey: "zipcode") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encodeWithCoder(aCoder: NSCoder)
	{
		if city != nil{
			aCoder.encode(city, forKey: "city")
		}
		if geo != nil{
			aCoder.encode(geo, forKey: "geo")
		}
		if street != nil{
			aCoder.encode(street, forKey: "street")
		}
		if suite != nil{
			aCoder.encode(suite, forKey: "suite")
		}
		if zipcode != nil{
			aCoder.encode(zipcode, forKey: "zipcode")
		}

	}
    
    public func encode(with aCoder: NSCoder) {
        if city != nil{
            aCoder.encode(city, forKey: "city")
        }
        if geo != nil{
            aCoder.encode(geo, forKey: "geo")
        }
        if street != nil{
            aCoder.encode(street, forKey: "street")
        }
        if suite != nil{
            aCoder.encode(suite, forKey: "suite")
        }
        if zipcode != nil{
            aCoder.encode(zipcode, forKey: "zipcode")
        }
    }

}
