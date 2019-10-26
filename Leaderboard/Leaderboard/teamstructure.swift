//
//  class.swift
//  Leaderboard
//
//  Created by Rosh Sugathan Thaivalappil on 10/26/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import Foundation
import UIKit

class teamd{
    var name: String
    var runs: Int
    var wickets: Int
    var overs: Double
    
    init(name: String, runs: Int, wickets: Int, overs: Double)
    {
        self.name = name
        self.runs = runs
        self.wickets = wickets
        self.overs = overs
    }
}
