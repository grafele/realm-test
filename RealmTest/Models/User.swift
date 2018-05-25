//
//  User.swift
//  Steuerung
//
//  Created by Stefan Kofler on 05.07.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

enum UserRole: Int {
    case admin = 0
    case ceo = 1
    case regionalManager = 2
    case stationManager = 3
    case guest = 4
}

class Role: Object {
    @objc dynamic var id: Int = 0
    @objc dynamic var title: String = ""

    override class func primaryKey() -> String? {
        return "id"
    }

    convenience init(id: Int, title: String) {
        self.init()

        self.id = id
        self.title = title
    }
}

class User: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var name: String = ""
    @objc dynamic var firstname: String = ""
    @objc dynamic var gender: String = ""
    @objc dynamic var username: String = ""
    @objc dynamic var disabled: Bool = false
    @objc private dynamic var role: Role!

    var userRole: UserRole {
        get {
            return UserRole(rawValue: role.id)!
        }
        set {
            self.role = realm?.object(ofType: Role.self, forPrimaryKey: newValue.rawValue) ?? Role(id: newValue.rawValue, title: "\(newValue)")
        }
    }

    override class func primaryKey() -> String? {
        return "id"
    }

    override class func ignoredProperties() -> [String] {
        return ["userRole"]
    }
    
    convenience init(id: String, name: String, role: UserRole) {
        self.init()

        self.id = id
        self.name = name
        self.role = Role(id: role.rawValue, title: "\(role)")
    }
}
