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
    
    @IBOutlet var team_o: UILabel!
    @IBOutlet var run_o: UILabel!
    @IBOutlet var wickets_o: UILabel!
    @IBOutlet var overs_o: UILabel!
    
    func setcell(team: teamd)
    {
        team_o.text = team.name
        run_o.text = String(team.runs)
        wickets_o.text = String(team.wickets)
        overs_o.text = String(team.overs)
    }
}


