//
//  StackViewController.swift
//  StackedMenu
//
//  Created by yanze on 3/28/17.
//  Copyright © 2017 yanzeliu. All rights reserved.
//

import UIKit

class StackViewController: UIViewController {
    
    @IBOutlet weak var headerLabel: UILabel!
    var headerString: String? {
        didSet {
            configureView()
        }
    }
    
    func configureView() {
        headerLabel.text = headerString
    }
    
    
}
