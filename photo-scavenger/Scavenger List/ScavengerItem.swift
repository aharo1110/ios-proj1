//
//  ScavengerItem.swift
//  photo-scavenger
//
//  Created by Adrian Haro on 2/4/25.
//

import UIKit

class ScavengerItem : UITableViewCell {
    
    @IBOutlet weak var checkMark: UIImageView!
    @IBOutlet weak var itemLabel: UILabel!
    
    func base(with scavenger: Scavenger){
        itemLabel.text = scavenger.title
        itemLabel.textColor = scavenger.isComplete ? .secondaryLabel : .label
        checkMark.image = UIImage(systemName: scavenger.isComplete ? "checkmark.circle" : "circle")?.withRenderingMode(.alwaysTemplate)
        checkMark.tintColor = scavenger.isComplete ? .systemGreen : .systemRed
    }
}
