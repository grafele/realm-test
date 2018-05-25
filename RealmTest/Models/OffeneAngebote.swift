//
//  OffeneAngebote.swift
//  Steuerung
//
//  Created by Stefan Kofler on 13.11.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class OffeneAngebote: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var districtID: String = ""
    @objc dynamic var rentalStationID: String = ""
    @objc dynamic var abgelaufenKleiner30Anz: Int = 0
    @objc dynamic var abgelaufenGroesser30Anz: Int = 0
    @objc dynamic var abgelaufenAnz: Int = 0
    @objc dynamic var anz0bis3: Int = 0
    @objc dynamic var anz4bis7: Int = 0
    @objc dynamic var anz8bis14: Int = 0
    @objc dynamic var anz15bis30: Int = 0
    @objc dynamic var anz30: Int = 0
    @objc dynamic var euro0bis3: Double = 0
    @objc dynamic var euro4bis7: Double = 0
    @objc dynamic var euro8bis14: Double = 0
    @objc dynamic var euro15bis30: Double = 0
    @objc dynamic var euro30: Double = 0
    @objc dynamic var abgelaufen30Euro: Double = 0
    @objc dynamic var abgelaufenGroesser30Eur: Double = 0
    @objc dynamic var abgelaufenEur: Double = 0

    override class func primaryKey() -> String? {
        return "id"
    }

}
