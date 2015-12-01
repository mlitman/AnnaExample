//
//  ViewController.swift
//  AnnaExample
//
//  Created by Michael Litman on 11/3/15.
//  Copyright © 2015 Michael Litman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTF: UITextField!
    var defaults : NSUserDefaults!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        for(var i = 0; i < 10; i++)
        {
            Singleton.createPerson("Person \(i)", lname: "Litman", age: 13)
        }
        
        defaults = NSUserDefaults.standardUserDefaults()
        let username = defaults.valueForKey("username")
        if(username != nil)
        {
            usernameTF.text = username as! String
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        // Get the new view controller using segue.destinationViewController.
        // Pass thlected object to the new view controller.
        Singleton.username = self.usernameTF.text!
        defaults.setValue(self.usernameTF.text, forKey: "username")
        defaults.synchronize()
        let username = defaults.valueForKey("username")
        print("Username: \(username)")
    }
}

