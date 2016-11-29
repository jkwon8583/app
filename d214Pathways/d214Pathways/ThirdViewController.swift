//
//  ThirdViewController.swift
//  d214Pathways
//
//  Created by apcsp on 11/29/16.
//  Copyright © 2016 apcsp. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController
{
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!

    var name: String!
    var classDescription: String!
    var id: String!
    var pathwayID: String!
    var number: String!
    var year: String!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        navigationController?.title = name
        
        nameLabel.text = "Name: " + name
        numberLabel.text = "Number: " + number
        descriptionLabel.text = "Description: " + classDescription
        
    }

}
