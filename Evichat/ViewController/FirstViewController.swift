//
//  FirstViewController.swift
//  Evichat
//
//  Created by mac on 10/29/16.
//  Copyright © 2016 com.nilesh. All rights reserved.
//

import Foundation
import UIKit

class FirstViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.dodo.topLayoutGuide = self.topLayoutGuide
        self.view.dodo.bottomLayoutGuide = self.bottomLayoutGuide
        self.view.dodo.style.bar.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        
        self.navigationItem.setHidesBackButton(true, animated:true)
    }
    
    @IBAction func onTapProceedButton(_ sender: AnyObject) {
        self.performSegue(withIdentifier: StorySegues.FromFirstToSelect.rawValue, sender: self)
    }
    
}
