//
//  HistoryBTCViewCell.swift
//  NeverGiveUpBTC
//
//  Created by Paul on 15/6/2566 BE.
//

import UIKit

class HistoryBTCViewCell: UITableViewCell {
    
    var setCurrency1: String = "" {
        didSet {
            labelCurrency1.text = setCurrency1
        }
    }
    
    var setCurrency2: String = "" {
        didSet {
            labelCurrency2.text = setCurrency2
        }
    }
    
    var setCurrency3: String = "" {
        didSet {
            labelCurrency3.text = setCurrency3
        }
    }
    
    var setUpdate: String = "" {
        didSet {
            labelUpdate.text = setUpdate
        }
    }
    
    @IBOutlet weak var labelCurrency1: UILabel!
    
    @IBOutlet weak var labelCurrency2: UILabel!
    
    @IBOutlet weak var labelCurrency3: UILabel!
    
    @IBOutlet weak var labelUpdate: UILabel!
}

