//
//  OnlineShare.swift
//  Steuerung
//
//  Created by Stefan Kofler on 14.07.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class OnlineShare: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var districtID: String = ""
    @objc dynamic var rentalStationID: String = ""
    @objc dynamic var year: Int = 0
    @objc dynamic var month: Int = 0
    @objc dynamic var onlineShare: Double = 0.0
    @objc dynamic var offlineShare: Double = 0.0
    @objc dynamic var onlineShareAccumulated: Double = 0.0
    @objc dynamic var offlineShareAccumulated: Double = 0.0
    var ampel: RealmOptional<Int> = RealmOptional()
    var ampelKum: RealmOptional<Int> = RealmOptional()

    override class func primaryKey() -> String? {
        return "id"
    }

}
