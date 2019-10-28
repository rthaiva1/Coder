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
    var image: UIImage
    var name: String
    var win: Int
    var runner: Int
    var years: String
    
    init(image: UIImage,name: String, win: Int, runner: Int, years: String)
    {
        self.image = image
        self.name = name
        self.win = win
        self.runner = runner
        self.years = years
    }
}
