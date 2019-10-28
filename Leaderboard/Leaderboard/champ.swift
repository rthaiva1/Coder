//
//  ViewController.swift
//  Leaderboard
//
//  Created by Rosh Sugathan Thaivalappil on 10/24/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit

class champ: UIViewController {
    @IBOutlet var year: UILabel!
    @IBOutlet var country: UILabel!
    @IBOutlet var winimage: UIImageView!
    @IBOutlet var flag: UIImageView!
    var c: String!
    var y: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        winimage.image = UIImage(named: "champions")
        country.text = c
        year.text = y
        switch c {
        case "Australia":
            flag.image = UIImage(named: "1")
        case "India":
            flag.image = UIImage(named: "2")
        case "West Indies":
            flag.image = UIImage(named: "3")
        case "England":
            flag.image = UIImage(named: "4")
        case "Srilanka":
            flag.image = UIImage(named: "5")
        case "Pakistan":
            flag.image = UIImage(named: "6")
        case "New Zealand":
            flag.image = UIImage(named: "7")
        default:
            print("Image not found")
        }
    }

    @IBAction func goback(_ sender: Any)
    {
         performSegue(withIdentifier: "home2", sender: self)
    }
}
