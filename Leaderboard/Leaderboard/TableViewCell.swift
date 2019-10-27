//
//  TableViewCell.swift
//  Leaderboard
//
//  Created by Rosh Sugathan Thaivalappil on 10/27/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var team_o: UILabel!
    @IBOutlet var run_o: UILabel!
    @IBOutlet var wicket_o: UILabel!
    @IBOutlet var overs_o: UILabel!
    
    func setcell(team: teamd)
    {
        team_o.text = team.name
        run_o.text = String(team.runs)
        wicket_o.text = String(team.wickets)
        overs_o.text = String(team.overs)
    }
}
