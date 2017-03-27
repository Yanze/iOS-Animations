//
//  TableViewController.swift
//  TableViewAnimation
//
//  Created by yanze on 3/26/17.
//  Copyright © 2017 yanzeliu. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animateTableView()
    }
    
    //MARK: uitableview methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "Cool Effects \(indexPath.row)"
        return cell
    }
    
    
    func animateTableView() {
        tableView.reloadData()
        let cells = tableView.visibleCells
        
        let tableviewHeight = tableView.bounds.size.height
        
        
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: 0, y: tableviewHeight)
        }
        
        var delayCounter = 0
        for cell in cells {
            UIView.animate(withDuration: 2.25, delay: Double(delayCounter) * 0.08, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                cell.transform = CGAffineTransform.identity
            }, completion: nil)
            delayCounter += 1
        }
        
    }
    
    
    
}
