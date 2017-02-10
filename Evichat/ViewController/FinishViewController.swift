//
//  FinishViewController.swift
//  Evichat
//
//  Created by mac on 10/29/16.
//  Copyright © 2016 com.nilesh. All rights reserved.
//

import Foundation
import UIKit

class FinishViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.dodo.topLayoutGuide = self.topLayoutGuide
        self.view.dodo.bottomLayoutGuide = self.bottomLayoutGuide
        self.view.dodo.style.bar.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        
        self.navigationItem.setHidesBackButton(true, animated:true)
    }
    
    @IBAction func onTapEnterNewCaseFile(_ sender: AnyObject) {
        _ = self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func onTapSeeAllSentThreads(_ sender: AnyObject) {
    }
    
    @IBAction func onTapExitEvichat(_ sender: AnyObject) {
        exit(0)
    }
    
}
