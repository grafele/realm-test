//
//  District.swift
//  Steuerung
//
//  Created by Stefan Kofler on 07.07.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class District: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var title: String = ""
    var managers = List<User>()

    override class func primaryKey() -> String? {
        return "id"
    }
    
    convenience init(id: String, title: String) {
        self.init()
        
        self.id = id
        self.title = title
    }

    convenience init(id: String, title: String, managers: [User]) {
        self.init()

        self.id = id
        self.title = title
        self.managers.append(objectsIn: managers)
    }

    static var allId: String {
        return "ZRD"
    }

    static var allTitle: String {
        return "ZRD Gesamt"
    }

}
