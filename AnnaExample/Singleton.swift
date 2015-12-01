//
//  Singleton.swift
//  AnnaExample
//
//  Created by Michael Litman on 11/3/15.
//  Copyright © 2015 Michael Litman. All rights reserved.
//

import UIKit
import Parse

class Singleton: NSObject
{
    static var username = ""
    
    static func createPerson(fname: String, lname: String, age: Int)
    {
        let testObject = PFObject(className: "Person")
        testObject["fname"] = fname
        testObject["lname"] = lname
        testObject["age"] = age
        testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            print("Object has been saved.")
        }

    }
}
