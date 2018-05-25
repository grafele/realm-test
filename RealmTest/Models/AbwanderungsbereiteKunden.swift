//
//  CustomersMigration.swift
//  Steuerung
//
//  Created by Joan Disho on 14.11.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class AbwanderungsbereiteKunden: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var districtID: String = ""
    @objc dynamic var rentalStationID: String = ""
    @objc dynamic var kunde: Int = 0
    @objc dynamic var name: String = ""
    @objc dynamic var adresse: String = ""
    @objc dynamic var plz: String = ""
    @objc dynamic var ort: String = ""
    @objc dynamic var tel: String = ""
    @objc dynamic var konzernschluessel: String = ""
    @objc dynamic var konzerngruppe: String = ""
    @objc dynamic var letzteRE: Date = Date()
    @objc dynamic var aj: Double = 0.0
    @objc dynamic var vj: Double = 0.0
    @objc dynamic var max5J: Double = 0.0
    @objc dynamic var jahrMax5J: Int = 0
    @objc dynamic var umsatzSeitKundenanlage: Double = 0.0
    @objc dynamic var kdAnlage: Int = 0
    @objc dynamic var filterMax5J: Int = 0
    
    override class func primaryKey() -> String? {
        return "id"
    }
}
