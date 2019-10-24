//
//  ViewController.swift
//  Leaderboard
//
//  Created by Rosh Sugathan Thaivalappil on 10/23/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var Team_label: UILabel!
    @IBOutlet var team_textbox: UITextField!
    @IBOutlet var team: UITextField!
    @IBOutlet var runs: UITextField!
    @IBOutlet var wickets: UITextField!
    @IBOutlet var overs: UITextField!
    @IBOutlet var extraballs: UITextField!
    @IBOutlet var tlabel: UILabel!
    @IBOutlet var slabel: UILabel!
    @IBOutlet var blabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        Team_label.isHidden = true
        team_textbox.isHidden = true
        team.isHidden = true
        runs.isHidden = true
        wickets.isHidden = true
        overs.isHidden = true
        extraballs.isHidden = true
        tlabel.isHidden = true
        slabel.isHidden = true
        blabel.isHidden = true
    }

    @IBAction func addteam(_ sender: UIButton)
    {
        Team_label.isHidden = false
        team_textbox.isHidden = false

    }

    @IBAction func viewboard(_ sender: UIButton)
    {
    }


    @IBAction func addstat(_ sender: UIButton)
    {
        team.isHidden = false
        runs.isHidden = false
        wickets.isHidden = false
        overs.isHidden = false
        extraballs.isHidden = false
        tlabel.isHidden = false
        slabel.isHidden = false
        blabel.isHidden = false
    }
}

