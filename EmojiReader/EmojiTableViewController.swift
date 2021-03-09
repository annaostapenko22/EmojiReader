//
//  EmojiTableViewController.swift
//  EmojiReader
//
//  Created by pc on 3/5/21.
//  Copyright © 2021 pc. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojiList = [
    Emoji(emoji: "🥰", name: "Love", description: "Lets love each other", isFavourite: false),
    Emoji(emoji: "😘", name: "Kiss", description: "Lets kiss each other", isFavourite: false),
    Emoji(emoji: "💜", name: "Heart", description: "Heart is violett", isFavourite: false),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        self.title = "Emoji Reader"
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojiList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "emojiCell", for: indexPath) as! EmojiTableViewCell
        
        let emojiItem = emojiList[indexPath.row]
        cell.setEmojiItemValues(emojiItem: emojiItem)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            emojiList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else {
            print("else")
        }
    }
    
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedEmoji = emojiList.remove(at: sourceIndexPath.row)
        emojiList.insert(movedEmoji, at: destinationIndexPath.row)
        tableView.reloadData()
    }
}
