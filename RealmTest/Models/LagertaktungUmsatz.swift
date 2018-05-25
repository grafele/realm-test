//
//  LagertaktungUmsatz.swift
//  Steuerung
//
//  Created by Joan Disho on 23.11.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class LagertaktungUmsatz: Object {
    
    @objc dynamic var id: String = ""
    @objc dynamic var districtID: String = ""
    @objc dynamic var rentalStationID: String = ""
    @objc dynamic var jahr: Int = -1
    @objc dynamic var monat: Int = -1
    @objc dynamic var sparte: String = ""
    @objc dynamic var ltMonat: Double = -1
    @objc dynamic var ltKum: Double = -1
    @objc dynamic var mMonat: Double = -1
    @objc dynamic var mKum: Double = -1
    @objc dynamic var ltMonatAnteil: Double = -1
    @objc dynamic var ltKumAnteil: Double = -1
    
    override class func primaryKey() -> String? {
        return "id"
    }
}

