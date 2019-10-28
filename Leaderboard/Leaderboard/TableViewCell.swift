//
//  TableViewCell.swift
//  Leaderboard
//
//  Created by Rosh Sugathan Thaivalappil on 10/27/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import UIKit
class TableViewCell: UITableViewCell {

 
    @IBOutlet var image_o: UIImageView!
    @IBOutlet var name_o: UILabel!
    @IBOutlet var win_o: UILabel!
    @IBOutlet var runner_o: UILabel!
    @IBOutlet var years_o: UILabel!
    func setcell(team: teamd)
    {
        image_o.image = team.image
        name_o.text = team.name
        win_o.text = String(team.win)
        runner_o.text = String(team.runner)
        years_o.text = team.years
    }
}
