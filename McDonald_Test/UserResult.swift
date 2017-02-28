//
//	RootClass.swift
//
//  Created by Jayrajkumar Gohil on 2/27/17.
//  Copyright © 2017 Jayrajkumar Gohil. All rights reserved.
//

import Foundation


class UserResult : NSObject, NSCoding{

	var address : Addres!
	var company : Company!
	var email : String!
	var id : Int!
	var name : String!
	var phone : String!
	var username : String!
	var website : String!


    
	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		if let addressData = dictionary["address"] as? NSDictionary{
			address = Addres(fromDictionary: addressData)
		}
		if let companyData = dictionary["company"] as? NSDictionary{
			company = Company(fromDictionary: companyData)
		}
		email = dictionary["email"] as? String
		id = dictionary["id"] as? Int
		name = dictionary["name"] as? String
		phone = dictionary["phone"] as? String
		username = dictionary["username"] as? String
		website = dictionary["website"] as? String
	}

	/**
	 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if address != nil{
			dictionary["address"] = address.toDictionary()
		}
		if company != nil{
			dictionary["company"] = company.toDictionary()
		}
		if email != nil{
			dictionary["email"] = email
		}
		if id != nil{
			dictionary["id"] = id
		}
		if name != nil{
			dictionary["name"] = name
		}
		if phone != nil{
			dictionary["phone"] = phone
		}
		if username != nil{
			dictionary["username"] = username
		}
		if website != nil{
			dictionary["website"] = website
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         address = aDecoder.decodeObject(forKey: "address") as? Addres
         company = aDecoder.decodeObject(forKey: "company") as? Company
         email = aDecoder.decodeObject(forKey: "email") as? String
         id = aDecoder.decodeObject(forKey: "id") as? Int
         name = aDecoder.decodeObject(forKey: "name") as? String
         phone = aDecoder.decodeObject(forKey: "phone") as? String
         username = aDecoder.decodeObject(forKey: "username") as? String
         website = aDecoder.decodeObject(forKey: "website") as? String

	}

    public func encode(with aCoder: NSCoder) {
        
        if address != nil{
            aCoder.encode(address, forKey: "address")
        }
        if company != nil{
            aCoder.encode(company, forKey: "company")
        }
        if email != nil{
            aCoder.encode(email, forKey: "email")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if name != nil{
            aCoder.encode(name, forKey: "name")
        }
        if phone != nil{
            aCoder.encode(phone, forKey: "phone")
        }
        if username != nil{
            aCoder.encode(username, forKey: "username")
        }
        if website != nil{
            aCoder.encode(website, forKey: "website")
        }
    }
    
    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encodeWithCoder(aCoder: NSCoder)
	{
		if address != nil{
			aCoder.encode(address, forKey: "address")
		}
		if company != nil{
			aCoder.encode(company, forKey: "company")
		}
		if email != nil{
			aCoder.encode(email, forKey: "email")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}
		if phone != nil{
			aCoder.encode(phone, forKey: "phone")
		}
		if username != nil{
			aCoder.encode(username, forKey: "username")
		}
		if website != nil{
			aCoder.encode(website, forKey: "website")
		}

	}

}
