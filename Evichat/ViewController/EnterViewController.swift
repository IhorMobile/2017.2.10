//
//  EnterViewController.swift
//  Evichat
//
//  Created by mac on 10/29/16.
//  Copyright © 2016 com.nilesh. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class EnterViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var tf_filenum: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.dodo.topLayoutGuide = self.topLayoutGuide
        self.view.dodo.bottomLayoutGuide = self.bottomLayoutGuide
        self.view.dodo.style.bar.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        tf_filenum.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func onTapEnter(_ sender: AnyObject) {
        if ((tf_filenum.text?.characters.count)! < 1) {
            self.view.dodo.error(UserDialogs.RequiredFileNum.rawValue)
            
        } else {
            
            let urlString = "http://www.evichat.com/users/verify"
            let parameters: Parameters = ["file_number": "123456789"] // value needs to be changed in the future
            

            Alamofire.request(urlString, method:.post, parameters: parameters, headers: [:]).responseJSON { response in
                
                print(response.result.value)
                
                var valid : Int

                if let result = response.result.value {
                    let JSON = result as! NSDictionary
                    print(JSON)
                    let mobile_number : NSString = JSON["mobile_number"] as! NSString
                    let id : NSString = JSON["id"] as! NSString
                    valid = JSON["valid"] as! Int

                    print("----")
                    print(mobile_number)
                    
                    UserDefaults.standard.setValue(mobile_number, forKey: "")
                    UserDefaults.standard.setValue(id, forKey: "id")
//                    UserDefaults.standard.setValue(valid, forKey: "valid")
                    
                    //UserDefaults.standard.value(forKey: "user_auth_token")!
                

            let urlString = "http://www.evichat.com/users/:id/phone_number"
            let parameters: Parameters = ["mobile_number": "1-555-555-5555"]
                    
            Alamofire.request(urlString, method:.put, parameters: parameters, headers: [:]).responseJSON
                { response in
                        
                print(response.result.value)
                        
                
                if let result = response.result.value {
                    let JSON = result as! NSDictionary
                    print(JSON)
                    let phone_number : NSString = JSON["phone_number"] as! NSString
                    print("----")
                    print(phone_number)
                            
                    UserDefaults.standard.setValue(phone_number, forKey: "phone_number")
                }
                    
                                           
                 //UserDefaults.standard.value(forKey: "user_auth_token")!
                    
                    if valid == 0 {
                        self.view.dodo.error(UserDialogs.RequiredNumerror.rawValue)
                        
                    }else {
                        
                        UIHelper.showHUD("Loading")
                        
                        
                        }
                    }

                };
//                              
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                UIHelper.hideHUD()
                self.tf_filenum.text = ""
                self.performSegue(withIdentifier:
                    StorySegues.FromEnterToNumber.rawValue, sender: self)
    }
    }
}
}

}

