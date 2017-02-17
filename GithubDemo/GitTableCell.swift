//
//  GitTableCell.swift
//  GithubDemo
//
//  Created by Cong Tam Quang Hoang on 16/02/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class GitTableCell: UITableViewCell {

    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Owner: UILabel!
    @IBOutlet weak var Decription: UILabel!
    @IBOutlet weak var Stars: UILabel!
    @IBOutlet weak var Forks: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
