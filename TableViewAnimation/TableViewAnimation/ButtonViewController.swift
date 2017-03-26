//
//  ButtonViewController.swift
//  TableViewAnimation
//
//  Created by yanze on 3/26/17.
//  Copyright © 2017 yanzeliu. All rights reserved.
//

import UIKit

class ButtonViewController: UIViewController {
    
    
    
    
    
    
    @IBAction func buttonBounce(_ sender: Any) {
        let button = sender as! UIButton
        let bounds = button.bounds
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: .curveEaseInOut, animations: { 
            button.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.size.width + 60, height: bounds.size.height)
        }) { (success:Bool) in
            if success {
                UIView.animate(withDuration: 0.5, animations: { 
                    button.bounds = bounds
                })
            }
        }
    }
    
    
    
}
