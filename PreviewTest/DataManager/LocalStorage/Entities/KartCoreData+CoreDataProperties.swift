//
//  KartCoreData+CoreDataProperties.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 18.07.2024.
//
//

import Foundation
import CoreData


extension KartCoreData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<KartCoreData> {
        return NSFetchRequest<KartCoreData>(entityName: "KartCoreData")
    }

    @NSManaged public var pic: Data
    @NSManaged public var quantity: Int32
    @NSManaged public var maxSpeed: Int32
    @NSManaged public var title: String

}

extension KartCoreData : Identifiable {

}
