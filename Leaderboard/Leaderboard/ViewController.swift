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
    @IBOutlet var team_textbox: UITextField!
    @IBOutlet var over: UITextField!
    @IBOutlet var submit: UIButton!
    @IBOutlet var addbutton: UIButton!
    var teams: [teamd] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        teams = array()
//        team_textbox.text! = "Country Name"
//        over.text! = "Year"
    }

    func array() -> [teamd]
    {
        var list: [teamd] = []
        
        let team1 = teamd(image: UIImage(named: "1")!,name: "Australia" ,win: 5, runner: 2, years: "1987,1999,2003,2007,2015")
        let team2 = teamd(image: UIImage(named: "2")!,name: "India" ,win: 2, runner: 1, years: "1983,2011")
        let team3 = teamd(image: UIImage(named: "3")!,name: "West Indies" ,win: 2, runner: 1, years: "1975,1979")
        let team4 = teamd(image: UIImage(named: "4")!,name: "England" ,win: 1, runner: 3, years: "2019")
        let team5 = teamd(image: UIImage(named: "5")!,name: "Sri Lanka" ,win: 1, runner: 2, years: "1996")
        let team6 = teamd(image: UIImage(named: "6")!,name: "Pakistan" ,win: 1, runner: 1, years: "1992")
        let team7 = teamd(image: UIImage(named: "7")!,name: "New Zealand" ,win: 0, runner: 2, years: "")
        list.append(team1)
        list.append(team2)
        list.append(team3)
        list.append(team4)
        list.append(team5)
        list.append(team6)
        list.append(team7)
        return list
    }
    
    @IBAction func addteam(_ sender: UIButton)
    {
        let newpage : champ = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "championpage") as! champ
        newpage.c = self.team_textbox.text
        newpage.y = self.over.text
        self.present(newpage, animated: true, completion: nil)
        performSegue(withIdentifier: "viewchamp", sender: self)
    }
    @IBAction func add(_ sender: Any)
    {
    }
    @IBAction func viewboard(_ sender: UIButton)
    {
        performSegue(withIdentifier: "viewtable", sender: self)
    }
    @IBAction func submit(_ sender: Any)
    {
    }

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
