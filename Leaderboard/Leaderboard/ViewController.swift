//
//  ViewController.swift
//  Leaderboard
//
//  Created by Rosh Sugathan Thaivalappil on 10/24/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet var tableteam: UITableView!
    @IBOutlet var team_label: UILabel!
    @IBOutlet var team_textbox: UITextField!
    @IBOutlet var addbutton: UIButton!
    @IBOutlet var tlabel: UILabel!
    @IBOutlet var team: UITextField!
    @IBOutlet var slabel: UILabel!
    @IBOutlet var run: UITextField!
    @IBOutlet var wicket: UITextField!
    @IBOutlet var wlabel: UILabel!
    @IBOutlet var olabel: UILabel!
    @IBOutlet var over: UITextField!
    @IBOutlet var submit: UIButton!
    var teams: [teamd] = []

    override func viewDidLoad() {
        super.viewDidLoad()
//                team_label.isHidden = true
//                team_textbox.isHidden = true
//                addbutton.isHidden = true
//                tlabel.isHidden = true
//                team.isHidden = true
//                slabel.isHidden = true
//                run.isHidden = true
//                wicket.isHidden = true
//                wlabel.isHidden = true
//                olabel.isHidden = true
//                over.isHidden = true
//                submit.isHidden = true
        teams = array()
    }

    func array() -> [teamd]
    {
        var list: [teamd] = []
        
        let team1 = teamd(name: "abc" ,runs: 35, wickets: 2, overs: 46.0)
        let team2 = teamd(name: "rosh" ,runs: 46, wickets: 3, overs: 34.0)
        let team3 = teamd(name: "wow" ,runs: 65, wickets: 5, overs: 45.3)
        let team4 = teamd(name: "titan" ,runs: 43, wickets: 6, overs: 2.0)
        let team5 = teamd(name: "joey" ,runs: 43, wickets: 34, overs: 56.3)
        let team6 = teamd(name: "mon" ,runs: 24, wickets: 5, overs: 56.2)
        
        list.append(team1)
        list.append(team2)
        list.append(team3)
        list.append(team4)
        list.append(team5)
        list.append(team6)
        
        return list
    
    }
    
    @IBAction func addteam(_ sender: UIButton) {
//        team_label.isHidden = false
//        team_textbox.isHidden = false
//        addbutton.isHidden = false
    }
    
    @IBAction func add(_ sender: Any)
    {
//        let temp = teamd(name: String(team_textbox.text!) ,runs: 0, wickets: 0, overs: 0.0)
//        teams.append(temp)
//        teams = list
//        team_label.isHidden = true
//        team_textbox.isHidden = true
//        addbutton.isHidden = true
    }
    @IBAction func viewboard(_ sender: UIButton)
    {
        teams = array()
//        tableteam.beginUpdates()
        performSegue(withIdentifier: "viewtable", sender: self)
    }
    @IBAction func addstat(_ sender: UIButton) {
//        tlabel.isHidden = false
//        team.isHidden = false
//        slabel.isHidden = false
//        run.isHidden = false
//        wicket.isHidden = false
//        wlabel.isHidden = false
//        olabel.isHidden = false
//        over.isHidden = false
//        submit.isHidden = false
        run.text = "0"
        wicket.text = "0"
        over.text = "0"
    }
    @IBAction func submit(_ sender: Any)
    {
        let r = Int(run.text!)
        let w = Int(wicket.text!)
        let o = Double(over.text!)
        
        if let row = self.teams.firstIndex(where: {$0.name == String(team.text!)})
        {
            teams[row].runs = r! + teams[row].runs
            teams[row].wickets = w! + teams[row].wickets
            teams[row].overs = o! + teams[row].overs
        }
        
//        tlabel.isHidden = true
//        team.isHidden = true
//        slabel.isHidden = true
//        run.isHidden = true
//        wicket.isHidden = true
//        wlabel.isHidden = true
//        olabel.isHidden = true
//        over.isHidden = true
//        submit.isHidden = true
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
////        let vc = segue.destination as! boardViewController
////        vc.teams = self.teams
////    if(tableteam != nil)
////    {
////    }
//
//    }
}

extension ViewController :UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let team = teams[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "newcell") as! TableViewCell
        cell.setcell(team: team)
        return cell
    }
}
