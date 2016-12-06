//
//  FifthViewController.swift
//  d214Pathways
//
//  Created by apcsp on 12/5/16.
//  Copyright © 2016 apcsp. All rights reserved.
//

import UIKit
import SafariServices

class FifthViewController: UIViewController, SFSafariViewControllerDelegate
{

    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

    @IBAction func webViewButton(sender: UIButton)
    {
        
        let svc = SFSafariViewController(URL: NSURL(string: "https://www.findyourcalling.com")!)
        
        svc.delegate = self
        
        presentViewController(svc, animated: true, completion: nil)
    
    }

}
