//
//  BTCCardCollectionViewCell.swift
//  NeverGiveUpBTC
//
//  Created by Paul on 15/6/2566 BE.
//

import UIKit

class BTCCardCollectionViewCell: UICollectionViewCell {
    
    var setCurrency: String? {
        didSet {
            labelCurrency.text = setCurrency
        }
    }
    
    var setAmount: String? {
        didSet {
            labelAmount.text = setAmount
        }
    }
    
    var setUpdate: String? {
        didSet {
            labelUpdate.text = setUpdate
        }
    }
    
    var setDescription: String? {
        didSet {
            labelDescription.text = setDescription
        }
    }
    
    
    @IBOutlet weak var roundView: UIView! {
        didSet {
            roundView.layer.cornerRadius = 20
        }
    }
    
    @IBOutlet weak var labelCurrency: UILabel!
    
    @IBOutlet weak var labelAmount: UILabel!
    
    @IBOutlet weak var labelUpdate: UILabel!
    
    @IBOutlet weak var labelDescription: UILabel!
}
