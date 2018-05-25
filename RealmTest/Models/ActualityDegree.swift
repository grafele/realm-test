//
//  ActualityDegree.swift
//  Steuerung
//
//  Created by Stefan Kofler on 07.09.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class ActualityDegree: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var districtID: String = ""
    @objc dynamic var rentalStationID: String = ""
    @objc dynamic var notExpired: Double = 0.0
    @objc dynamic var expired1M: Double = 0.0
    @objc dynamic var expired2M: Double = 0.0
    @objc dynamic var expired3M: Double = 0.0
    @objc dynamic var expiredG3M: Double = 0.0
    @objc dynamic var actualityDegree: Double = 0.0

    override class func primaryKey() -> String? {
        return "id"
    }

}
