//
//  ExternalRentals.swift
//  Steuerung
//
//  Created by Joan Disho on 21.11.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class FremdanmietungUmsatz: Object {
    
    @objc dynamic var id: String = ""
    @objc dynamic var districtID: String = ""
    @objc dynamic var rentalStationID: String = ""
    @objc dynamic var sparte: String = ""
    @objc dynamic var monat: Int = -1
    @objc dynamic var jahr: Int = -1
    @objc dynamic var faMon: Int = -1
    @objc dynamic var vmMon: Int = -1
    @objc dynamic var faAnteilMon: Double = -1.0
    @objc dynamic var faKum: Double = -1.0
    @objc dynamic var vmKum: Double = -1.0
    @objc dynamic var faAnteilKum: Double = -1.0

    override class func primaryKey() -> String? {
        return "id"
    }
}
