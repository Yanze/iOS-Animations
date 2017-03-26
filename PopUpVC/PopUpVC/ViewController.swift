//
//  ViewController.swift
//  PopUpVC
//
//  Created by yanze on 12/20/16.
//  Copyright © 2016 yanzeliu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var titleTextfield: UITextField!
    @IBOutlet weak var blurEffect: UIVisualEffectView!
    @IBOutlet var addItemView: UIView!
    var effect: UIVisualEffect!

    override func viewDidLoad() {
        super.viewDidLoad()
        effect = blurEffect.effect
        blurEffect.effect = nil
        
        addItemView.layer.cornerRadius = 5
    }

    func animateIn() {
        view.addSubview(addItemView)
        addItemView.center = view.center
        // make bigger
        addItemView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        addItemView.alpha = 0
        
        UIView.animate(withDuration: 0.4) { 
            self.blurEffect.effect = self.effect
            self.addItemView.alpha = 1
            self.addItemView.transform = CGAffineTransform.identity
        }
    }
    
    func animateOut() {
        UIView.animate(withDuration: 0.3, animations: { 
            self.blurEffect.effect = nil
            self.addItemView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            self.addItemView.alpha = 0
        }) { (success: Bool) in
            self.addItemView.removeFromSuperview()
        }
    }
    
    // dismiss the popup
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        navigationItem.title = titleTextfield.text!
        animateOut()
    }
    
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        animateIn()
    }


}

