//
//  WeightRecord.swift
//  MyDietDiaryApp
//
//  Created by Taku Yamada on 2021/03/24.
//

import Foundation
import RealmSwift

class WeightRecord: Object {
    override static func primaryKey() -> String? {
        return "id"
    }
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var date: Date = Date()
    @objc dynamic var weight: Double = 0
}
