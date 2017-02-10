//
//  Config.swift
//  Evichat
//
//  Created by mac on 10/29/16.
//  Copyright © 2016 com.nilesh. All rights reserved.
//

import Foundation

enum StorySegues: String {
    case FromEnterToNumber      = "EnterToNumber"
    case FromFirstToSelect      = "FirstToSelect"
    case FromSelectToContact    = "SelectToContact"
    case FromContactToSuccess   = "ContactToSuccess"
    case FromSuccessToFinish    = "SuccessToFinish"
}

enum UserDialogs: String {
    case RequiredFileNum        = "File # should be required."
    case RequiredNumerror       = "invalid file number."
}
