//
//  CastTableViewController.swift
//  IRDB_WHS
//
//  Created by William Stanley on 11/5/20.
//

import UIKit

class CastTableViewController: UITableViewController {
    
    var castListArray: [Cast]?
    var starringCast: [Cast]?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return castListArray?.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "castCell", for: indexPath)

        // Configure the cell...
        
        //Use the values in array to make cast list pretty
        cell.textLabel?.text = castListArray?[indexPath.row].actorName
        
        let roleofActor = "starring as:     "
        cell.detailTextLabel?.text = "\(roleofActor)\(castListArray?[indexPath.row].role ?? "Role")"

        return cell
    }
    


}
