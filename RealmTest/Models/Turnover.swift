//
//  Umsatz.swift
//  Steuerung
//
//  Created by Joan Disho on 08.09.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class Turnover: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var districtID: String = ""
    @objc dynamic var rentalStationID: String = ""
    @objc dynamic var year: Int = 0
    @objc dynamic var month: Int = 0
    @objc dynamic var branch: String = ""
    @objc dynamic var sales: Double = 0.0
    @objc dynamic var salesAccumulated: Double = 0.0
    @objc dynamic var salesPlan: Double = 0.0
    @objc dynamic var salesAccumulatedPlan: Double = 0.0
    var salesMA: RealmOptional<Double> = RealmOptional()
    var salesAccumulatedMA: RealmOptional<Double> = RealmOptional()
    var salesPlanMA: RealmOptional<Double> = RealmOptional()
    var salesAccumulatedPlanMA: RealmOptional<Double> = RealmOptional()
    @objc dynamic var hr: Double = 0.0
    @objc dynamic var hrAccumulated: Double = 0.0
    var hrMA: RealmOptional<Double> = RealmOptional()
    var hrAccumulatedMA: RealmOptional<Double> = RealmOptional()

    override class func primaryKey() -> String? {
        return "id"
    }

}
