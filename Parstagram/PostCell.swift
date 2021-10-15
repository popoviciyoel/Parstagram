//
//  PostCell.swift
//  Parstagram
//
//  Created by Yoel Popovici on 10/14/21.
//

import UIKit

class PostCell: UITableViewCell {
    @IBOutlet weak var userNameTextLabel: UILabel!
    @IBOutlet weak var captionTextLabel: UILabel!
    
    @IBOutlet weak var postImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
