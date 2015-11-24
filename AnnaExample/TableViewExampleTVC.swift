//
//  TableViewExampleTVC.swift
//  AnnaExample
//
//  Created by Michael Litman on 11/17/15.
//  Copyright © 2015 Michael Litman. All rights reserved.
//

import UIKit

class TableViewExampleTVC: UIViewController
{
    
    @IBOutlet weak var tvPlaceholder: UIView!
    var theTableViewController : SupportTVC!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.theTableViewController = self.storyboard?.instantiateViewControllerWithIdentifier("SupportTVC") as! SupportTVC
        self.tvPlaceholder.addSubview(self.theTableViewController.view)

    }

    override func didReceiveMemoryWarning()
    {
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
