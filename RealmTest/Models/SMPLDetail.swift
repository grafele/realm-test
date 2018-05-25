//
//  SMPLDetails.swift
//  Steuerung
//
//  Created by Joan Disho on 24.08.17.
//  Copyright © 2017 Zeppelin GmbH. All rights reserved.
//

import Foundation
import RealmSwift

class SMPLDetail: Object {
    @objc dynamic var id: String = ""
    @objc dynamic var districtID: String = ""
    @objc dynamic var rentalStationID: String = ""
    @objc dynamic var managerGender: String!
    @objc dynamic var managerName: String!
    @objc dynamic var managerFirstname: String!
    @objc dynamic var clientName: String = ""
    @objc dynamic var contractNumber: String = ""
    @objc dynamic var contractStartDate: Date!
    @objc dynamic var contractEndDate: Date!
    let salesTarget = RealmOptional<Double>()
    let salesLast12Months = RealmOptional<Double>()
    let diff = RealmOptional<Double>()
    @objc dynamic var goalAttainmentTrafficLightRawValue: Int = -1
    @objc dynamic var goalAttainmentProjectionTrafficLightRawValue: Int = -1
    let weeksToExpiration = RealmOptional<Int>()
    @objc dynamic var status: String = ""
    @objc dynamic var hasPriority: Bool = false
    @objc dynamic var rahmenvertragsindexReal: Double = 0.0

    override class func primaryKey() -> String? {
        return "id"
    }

}
