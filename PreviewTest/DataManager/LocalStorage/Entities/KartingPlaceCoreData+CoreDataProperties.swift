//
//  KartingPlaceCoreData+CoreDataProperties.swift
//  PreviewTest
//
//  Created by Николай Щербаков on 18.07.2024.
//
//

import Foundation
import CoreData


extension KartingPlaceCoreData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<KartingPlaceCoreData> {
        return NSFetchRequest<KartingPlaceCoreData>(entityName: "KartingPlaceCoreData")
    }

    @NSManaged public var pic: Data
    @NSManaged public var title: String
    @NSManaged public var address: String

}

extension KartingPlaceCoreData : Identifiable {

}
