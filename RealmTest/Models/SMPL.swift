//
//  SMPL.swift
//  Steuerung
//
//  Created by Stefan Kofler on 07.07.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class SMPL: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var districtID: String = ""
    @objc dynamic var rentalStationID: String = ""
    @objc dynamic var year: Int = 0
    @objc dynamic var month: Int = 0
    @objc dynamic var spotShare: Double = 0.0
    @objc dynamic var smplShare: Double = 0.0
    @objc dynamic var spotShareAccumulated: Double = 0.0
    @objc dynamic var smplShareAccumulated: Double = 0.0
    @objc dynamic var ampel: String! = ""
    @objc dynamic var ampelkum: String! = ""

    override class func primaryKey() -> String? {
        return "id"
    }

}
