//
//  VC2.swift
//  AnnaExample
//
//  Created by Michael Litman on 11/3/15.
//  Copyright © 2015 Michael Litman. All rights reserved.
//

import UIKit

class VC2: UIViewController {

    @IBOutlet weak var theUsernameLabel: UILabel!
    @IBAction func dismissButtonPressed(sender: AnyObject)
    {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.theUsernameLabel.text = Singleton.username
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool)
    {
        let defaults = NSUserDefaults.standardUserDefaults()
        let username = defaults.valueForKey("username")
        print("Username: \(username)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
