//
//  RentalStation.swift
//  Steuerung
//
//  Created by Stefan Kofler on 07.07.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class RentalStation: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var title: String = ""
    @objc dynamic var district: District!
    var employees = List<User>()

    override class func primaryKey() -> String? {
        return "id"
    }
    
    convenience init(id: String, title: String, district: District) {
        self.init()
        self.id = id
        self.title = title
        self.district = district
    }
    
    convenience init(id: String, title: String, district: District, managers: [User]) {
        self.init()

        self.id = id
        self.title = title
        self.district = district

        self.employees.append(objectsIn: managers)
    }

    var isAll: Bool {
        return district.id == id
    }

}
