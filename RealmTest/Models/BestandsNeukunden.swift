//
//  BestandsNeukunden.swift
//  Steuerung
//
//  Created by Stefan Kofler on 22.11.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class BestandsNeukunden: Object {

    @objc dynamic var id: String = ""
    @objc dynamic var districtID: String = ""
    @objc dynamic var rentalStationID: String = ""
    @objc dynamic var bestKD: Int = -1
    @objc dynamic var reaktLC: Int = -1
    @objc dynamic var neuKD: Int = -1
    @objc dynamic var totalKunden: Int = -1
    @objc dynamic var bestKDProz: Double = 0.0
    @objc dynamic var reaktLCProz: Double = 0.0
    @objc dynamic var anzNeuKDProz: Double = 0.0

    override class func primaryKey() -> String? {
        return "id"
    }

}


