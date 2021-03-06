//
//  EmojiTableViewCell.swift
//  EmojiReader
//
//  Created by pc on 3/9/21.
//  Copyright © 2021 pc. All rights reserved.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    
    func setEmojiItemValues(emojiItem: Emoji) {
        self.emojiLabel.text = emojiItem.emoji
        self.nameLabel.text = emojiItem.name
        self.descriptionLabel.text = emojiItem.description
    }
}
