//
//  User.swift
//  YumeNote
//
//  Created by Kouki Saito on 10/10/15.
//  Copyright © 2015 Kouki Siato. All rights reserved.
//

import RealmSwift

class User: Object {
    dynamic var id = 0
    dynamic var name = ""
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
}
