//
//  NewEmojiTableViewController.swift
//  EmojiReader
//
//  Created by pc on 3/9/21.
//  Copyright © 2021 pc. All rights reserved.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBAction func textChanged(_ sender: UITextField) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
