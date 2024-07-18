//
//  RepairCoreData+CoreDataProperties.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 18.07.2024.
//
//

import Foundation
import CoreData


extension RepairCoreData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<RepairCoreData> {
        return NSFetchRequest<RepairCoreData>(entityName: "RepairCoreData")
    }

    @NSManaged public var title: String
    @NSManaged public var cost: Int32

}

extension RepairCoreData : Identifiable {

}
