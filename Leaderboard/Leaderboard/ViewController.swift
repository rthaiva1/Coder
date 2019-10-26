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
    var teams: [teamd] = []
    var list: [teamd] = []

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
        let temp = teamd(name: String(team_textbox.text!) ,runs: 0, wickets: 0, overs: 0.0)
        list.append(temp)
        teams = list
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
        run.text = "0"
        wicket.text = "0"
        over.text = "0"
    }
    @IBAction func submit(_ sender: Any)
    {
        let r = Int(run.text!)
        let w = Int(wicket.text!)
        let o = Double(over.text!)
          for teamd in teams
          {
            if teamd.name == team.text
            {
                teamd.runs = r! + teamd.runs
                teamd.wickets = w! + teamd.wickets
                teamd.overs = o! + teamd.overs
            }
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let vc = segue.destination as! boardViewController
//        vc.teams = self.teams
//    }
}

extension ViewController :UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let team = teams[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "teamcell") as! boardViewController
        cell.setcell(team: team)
    }

}
