
//
//  NumberViewController.swift
//  Evichat
//
//  Created by SSH on 1/30/17.
//  Copyright © 2017 com.nilesh. All rights reserved.
//
import Foundation
import UIKit

class ViewController:UIViewController {
    
   var textField = UITextField()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let Label = UILabel()
        Label.backgroundColor = UIColor.brown//setting backgroundColor
        Label.textColor = UIColor.white      //setting text color
        Label.textAlignment = NSTextAlignment.left
        Label.text = "Hello World"
    self.view.addSubview(Label)
        
        
};
}
