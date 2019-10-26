//
//  ViewController.swift
//  Leaderboard
//
//  Created by Rosh Sugathan Thaivalappil on 10/24/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit

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
    var runs: [String: Float] = [:]
    var wickets: [String: Float] = [:]
    var overs: [String: Float] = [:]

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
        run.text = "0"
        wicket.text = "0"
        over.text = "0"

    }

    @IBAction func addteam(_ sender: UIButton) {
        team_label.isHidden = false
        team_textbox.isHidden = false
        let key = team_textbox.text
        runs[key!] = 0
        wickets[key!] = 0
        overs[key!] = 0
    }
    
    @IBAction func viewboard(_ sender: UIButton)
    {
        performSegue(withIdentifier: "viewtable", sender: self)
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
    }
    @IBAction func submit(_ sender: Any)
    {
        let key = team.text
        let r = Float(run.text!)
        let w = Float(wicket.text!)
        let o = Float(over.text!)
        runs[key!] = Float(r!) + runs[key!]!
        wickets[key!] = Float(w!) + wickets[key!]!
        overs[key!] = Float(o!) + overs[key!]!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! boardViewController
        vc.runs = self.runs
        vc.wickets = self.wickets
        vc.overs = self.overs
    }
}
