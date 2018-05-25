//
//  FlopCustomer.swift
//  Steuerung
//
//  Created by Stefan Kofler on 24.08.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class FlopCustomer: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var districtID: String = ""
    @objc dynamic var rentalStationID: String = ""
    @objc dynamic var rank: Int = 0
    @objc dynamic var customerId: String = ""
    @objc dynamic var customerName: String = ""
    @objc dynamic var hint: String?
    @objc dynamic private var trafficLightRawValue: Int = 0
    @objc dynamic var customerRevenueCurrentYear: Double = 0.0
    @objc dynamic var customerRevenueLastYear: Double = 0.0
    @objc dynamic var customerRevenueDiff: Double = 0.0
    @objc dynamic var customerRevenueDiffPercent: Double = 0.0
    @objc dynamic var zrdRevenueCurrentYear: Double = 0.0
    @objc dynamic var zrdRevenueLastYear: Double = 0.0
    @objc dynamic var zrdRevenueDiff: Double = 0.0
    @objc dynamic var zrdRevenueDiffPercent: Double = 0.0

    override class func primaryKey() -> String? {
        return "id"
    }

}
