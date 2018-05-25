//
//  Produktspartensplit.swift
//  Steuerung
//
//  Created by Joan Disho on 12.12.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class Produktspartensplit: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var districtID: String = ""
    @objc dynamic var rentalStationID: String = ""
    @objc dynamic var jahr: Int = 0
    @objc dynamic var monat: Int = 0
    @objc dynamic var cobdSparte: String = ""
    @objc dynamic var anteilMonat: Double = 0.0
    @objc dynamic var anteilKum: Double = 0.0
    @objc dynamic var umsatzMonatTotal: Double = 0.0
    @objc dynamic var umsatzKumTotal: Double = 0.0
    
    override class func primaryKey() -> String? {
        return "id"
    }
    
}
