//
//  SuccessViewController.swift
//  Evichat
//
//  Created by mac on 10/29/16.
//  Copyright © 2016 com.nilesh. All rights reserved.
//

import Foundation
import UIKit

class SuccessViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.dodo.topLayoutGuide = self.topLayoutGuide
        self.view.dodo.bottomLayoutGuide = self.bottomLayoutGuide
        self.view.dodo.style.bar.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        
        self.navigationItem.setHidesBackButton(true, animated:true)
    }
    
    @IBAction func onTapSendNewContact(_ sender: AnyObject) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: ContactViewController.self) {
                _ = self.navigationController?.popToViewController(controller, animated: true)
                break
            }
        }
    }
    
    @IBAction func onTapSendNewPlatform(_ sender: AnyObject) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: SelectViewController.self) {
                _ = self.navigationController?.popToViewController(controller, animated: true)
                break
            }
        }
    }
    
    @IBAction func onTapFinishButton(_ sender: AnyObject) {
        self.performSegue(withIdentifier: StorySegues.FromSuccessToFinish.rawValue, sender: self)
    }
}
