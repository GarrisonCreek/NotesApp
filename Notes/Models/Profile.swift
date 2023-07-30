//
//  Profile.swift
//  Notes
//
//  Created by Garrison Creek on 7/30/23.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    
    static let `default` = Profile(username: "new_user")
    
}
