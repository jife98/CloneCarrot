//
//  MainTableViewCell.swift
//  CloneCarrot
//
//  Created by 최지철 on 2023/02/08.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var HeartCount: UILabel!
    @IBOutlet weak var HeartImg: UIImageView!
    @IBOutlet weak var ChatCount: UILabel!
    @IBOutlet weak var ChatImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
