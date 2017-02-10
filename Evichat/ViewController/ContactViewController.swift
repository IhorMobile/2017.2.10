//
//  ContactViewController.swift
//  Evichat
//
//  Created by mac on 10/29/16.
//  Copyright © 2016 com.nilesh. All rights reserved.
//

import Foundation
import UIKit

class ContactViewController: UIViewController {
    
    @IBOutlet weak var table_contact: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.dodo.topLayoutGuide = self.topLayoutGuide
        self.view.dodo.bottomLayoutGuide = self.bottomLayoutGuide
        self.view.dodo.style.bar.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        
        self.navigationItem.setHidesBackButton(true, animated:true)
        
        table_contact.reloadData()
    }
    
}

extension ContactViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell") as! ContactCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: StorySegues.FromContactToSuccess.rawValue, sender: self)
    }
}
