//
//  ViewController.swift
//  Leaderboard
//
//  Created by Rosh Sugathan Thaivalappil on 10/24/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit

var runs: [String: double_t] = [:]
var wickets: [String: double_t] = [:]
var overs: [String: double_t] = [:]

class ViewController: UIViewController {

    @IBOutlet var team_label: UILabel!
    @IBOutlet var team_textbox: UITextField!
    @IBOutlet var tlabel: UILabel!
    @IBOutlet var team: UITextField!
    @IBOutlet var slabel: UILabel!
    @IBOutlet var run: UITextField!
    @IBOutlet var rlabel: UILabel!
    @IBOutlet var wicket: UITextField!
    @IBOutlet var wlabel: UILabel!
    @IBOutlet var olabel: UILabel!
    @IBOutlet var over: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
                team_label.isHidden = true
                team_textbox.isHidden = true
                tlabel.isHidden = true
                team.isHidden = true
                slabel.isHidden = true
                run.isHidden = true
                rlabel.isHidden = true
                wicket.isHidden = true
                wlabel.isHidden = true
                olabel.isHidden = true
                over.isHidden = true

    }

    @IBAction func addteam(_ sender: UIButton) {
        team_label.isHidden = false
        team_textbox.isHidden = false
        let key: String? = team_textbox.text
        runs[key!] = 0
        wickets[key!] = 0
        overs[key!] = 0
    }
    
    @IBAction func viewboard(_ sender: UIButton) {
    }
    @IBAction func addstat(_ sender: UIButton) {
        tlabel.isHidden = false
        team.isHidden = false
        slabel.isHidden = false
        run.isHidden = false
        rlabel.isHidden = false
        wicket.isHidden = false
        wlabel.isHidden = false
        olabel.isHidden = false
        over.isHidden = false
        let key: String? = team.text
//        let r: double_t = double_t(run.text)
//        let w: double_t = double_t(wicket.text)
//        let o: double_t = double_t(over.text)
//        runs[key!] = r +  runs[key!]!
//        wickets[key!] = w + wickets[key!]!
//        overs[key!] = o + overs[key!]!
    }
}
