//
//  Umsatzrendite_Ergebnis.swift
//  Steuerung
//
//  Created by Joan Disho on 08.09.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class ReturnOnSales: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var districtID: String = ""
    @objc dynamic var rentalStationID: String = ""
    @objc dynamic var year: Int = 0
    @objc dynamic var month: Int = 0
    @objc dynamic var branch: String = ""
    @objc dynamic var umsatzrendite: Double = 0.0
    @objc dynamic var umsatzrenditeAccumulated: Double = 0.0
    var umsatzrenditeMA: RealmOptional<Double> = RealmOptional()
    var umsatzrenditeAccumulatedMA: RealmOptional<Double> = RealmOptional()
    @objc dynamic var ergebnis: Double = 0.0
    @objc dynamic var ergebnisAccumulated: Double = 0.0
    var ergebnisMA: RealmOptional<Double> = RealmOptional()
    var ergebnisAccumulatedMA: RealmOptional<Double> = RealmOptional()
    var trafficLightValue: RealmOptional<Int> = RealmOptional()
    var trafficLightAccumulatedValue: RealmOptional<Int> = RealmOptional()
    var trafficLightMAValue: RealmOptional<Int> = RealmOptional()
    var trafficLightAccumulatedMAValue: RealmOptional<Int> = RealmOptional()

    override class func primaryKey() -> String? {
        return "id"
    }

}
