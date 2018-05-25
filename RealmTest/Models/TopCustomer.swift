//
//  TopCustomer.swift
//  Steuerung
//
//  Created by Stefan Kofler on 22.08.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class TopCustomer: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var districtID: String = ""
    @objc dynamic var rentalStationID: String = ""
    @objc dynamic var rank: Int = 0
    @objc dynamic var customerId: String = ""
    @objc dynamic var customerName: String = ""
    @objc dynamic var hint: String?
    @objc dynamic var customerRevenue: Double = 0.0
    @objc dynamic var share: Double = 0.0
    @objc dynamic var zrdRevenue: Double = 0.0

    override class func primaryKey() -> String? {
        return "id"
    }

}
