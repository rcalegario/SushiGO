//
//  ViewPlayerName.swift
//  SushiGO
//
//  Created by Rodrigo Calegario on 14/05/17.
//  Copyright © 2017 RodrigoCalegario. All rights reserved.
//

import Foundation
import UIKit

class ViewPlayerName : UITableViewController {
    
    
    var qtyPlayers = Int()
    var playesNames = [String]()
    
    func names() {
        for i in 1...qtyPlayers {
            playesNames += ["Player " + i.description]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        names()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playesNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = playesNames[indexPath.row]
        
        return cell
    }
}
