//
//  OffenePosten.swift
//  Steuerung
//
//  Created by Stefan Kofler on 20.11.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class OffenePosten: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var districtID: String = ""
    @objc dynamic var rentalStationID: String = ""
    @objc dynamic var op: Double = 0
    @objc dynamic var anz: Int = 0
    @objc dynamic var opNichtFaellig: Double = 0
    @objc dynamic var anzNichtFaellig: Int = 0
    @objc dynamic var opFaellig: Double = 0
    @objc dynamic var anzFaellig: Int = 0
    @objc dynamic var opFaellig0bis30T: Double = 0
    @objc dynamic var anzFaellig0bis30T: Int = 0
    @objc dynamic var opFaellig30bis60T: Double = 0
    @objc dynamic var anzFaellig30bis60T: Int = 0
    @objc dynamic var opFaellig60bis90T: Double = 0
    @objc dynamic var anzFaellig60bis90T: Int = 0
    @objc dynamic var opFaellig90bis180T: Double = 0
    @objc dynamic var anzFaellig90bis180T: Int = 0
    @objc dynamic var opFaellig180bis360T: Double = 0
    @objc dynamic var anzFaellig180bis360T: Int = 0
    @objc dynamic var opFaelligAb360T: Double = 0
    @objc dynamic var anzFaelligAb360T: Int = 0

    override class func primaryKey() -> String? {
        return "id"
    }

}

