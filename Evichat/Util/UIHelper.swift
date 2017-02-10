//
//  UIHelper.swift
//  Evichat
//
//  Created by mac on 10/29/16.
//  Copyright © 2016 com.nilesh. All rights reserved.
//

import Foundation
import M13ProgressSuite

struct UIHelper{
    static var hud: AnyObject?
    
    static func showHUD(_ msg: String) {
        let window = UIApplication.shared.keyWindow!
        
        if(hud == nil) {
            hud = M13ProgressHUD(progressView: M13ProgressViewRing())
            (hud as! M13ProgressHUD).progressViewSize = CGSize(width: 40.0, height: 40.0);
            (hud as! M13ProgressHUD).animationPoint =  CGPoint(x: (UIScreen.main.bounds.size.width / 2), y: UIScreen.main.bounds.size.height / 2)
            (hud as! M13ProgressHUD).backgroundColor = UIColor.white.withAlphaComponent(0.3)
            (hud as! M13ProgressHUD).indeterminate = true
            
            window.addSubview((hud as! M13ProgressHUD))
        }
        
        (hud as! M13ProgressHUD).status = msg
        window.bringSubview(toFront: (hud as! M13ProgressHUD))
        
        (hud as! M13ProgressHUD).show(true)
    }
    
    static func HUDanimationDuration() -> CGFloat{
        if(hud != nil) {
            return (hud as! M13ProgressHUD).animationDuration
        } else {
            return 1.0
        }
    }
    
    static func setHUDStatus(_ msg: String) {
        (hud as! M13ProgressHUD).status = msg
    }
    
    static func hideHUD() {
        (hud as! M13ProgressHUD).hide(true)
    }
}
