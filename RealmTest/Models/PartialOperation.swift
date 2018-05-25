//
//  TeilvorgangeDataSet.swift
//  Steuerung
//
//  Created by Joan Disho on 22.08.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class PartialOperation: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var districtID: String = ""
    @objc dynamic var rentalStationID: String = ""
    @objc dynamic var week: Int = -1
    @objc dynamic var month: Int = -1
    @objc dynamic var year: Int = 0
    @objc dynamic var position: Double = 0.0
    @objc dynamic var positionAccumulated: Double = 0.0
    @objc dynamic var positionMA: Double = 0.0
    @objc dynamic var positionAccumulatedMA: Double = 0.0

    override class func primaryKey() -> String? {
        return "id"
    }

}
