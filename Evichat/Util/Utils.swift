//
//  Utils.swift
//  Evichat
//
//  Created by mac on 10/29/16.
//  Copyright © 2016 com.nilesh. All rights reserved.
//

import Foundation

struct Utils {
    static func getStringFromDate(_ _date: Date?) -> String {
        if (_date == nil) {
            return ""
        }
        
        let calendar = Calendar.current
        let components = (calendar as NSCalendar).components([.year, .month, .day], from: _date!)
        let str = String(format: "%d-%.2d-%.2d", components.year!, components.month!, components.day!)
        
        return str
    }
}
