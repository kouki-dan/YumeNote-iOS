//
//  Note.swift
//  YumeNote
//
//  Created by Kouki Saito on 10/10/15.
//  Copyright © 2015 Kouki Siato. All rights reserved.
//

import RealmSwift

class Note: Object {
    dynamic var title = ""
    dynamic var body = ""
    dynamic var author: User?
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
}
