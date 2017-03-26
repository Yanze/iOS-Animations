//
//  ViewController.swift
//  TableViewAnimation
//
//  Created by yanze on 3/26/17.
//  Copyright © 2017 yanzeliu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showTableVCConstraint: NSLayoutConstraint!
    @IBOutlet weak var showButtonVCConstraint: NSLayoutConstraint!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        showTableVCConstraint.constant -= view.bounds.width
        showButtonVCConstraint.constant -= view.bounds.width
    }
    
    var animationPerformedOnce = false
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // animate constraits
        if !animationPerformedOnce {
            performButtonsAnimation()
        }
        
    }
    
    func performButtonsAnimation() {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
            self.showTableVCConstraint.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseOut, animations: {
            self.showButtonVCConstraint.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: nil)
        animationPerformedOnce = true
    }



}

