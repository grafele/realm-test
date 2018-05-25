//
//  EscalationRateSPOT.swift
//  Steuerung
//
//  Created by Joan Disho on 26.09.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class EscalationRate: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var districtID: String = ""
    @objc dynamic var rentalStationID: String = ""
    @objc dynamic var year: Int = 0
    @objc dynamic var month: Int = 0
    @objc dynamic var branch: String = ""
    @objc dynamic var customerType: String = ""
    @objc dynamic var escalation: Double = 0.0
    @objc dynamic var escalationYTD: Double = 0.0

    override class func primaryKey() -> String? {
        return "id"
    }

}
