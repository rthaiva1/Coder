//
//  ViewController.swift
//  Leaderboard
//
//  Created by Rosh Sugathan Thaivalappil on 10/24/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit

class boardViewController: UIViewController
{

    var runs: [String: Float] = [:]
    var wickets: [String: Float] = [:]
    var overs: [String: Float] = [:]
    @IBOutlet var table: UITableView!
    override func viewDidLoad()
    {
        super.viewDidLoad()

    }
}
