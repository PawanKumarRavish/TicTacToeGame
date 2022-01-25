//
//  Game+CoreDataProperties.swift
//  Lab1_PawanKumar_c0835049_ios
//
//  Created by Pawan Ravish on 2022-01-24.
//
//

import Foundation
import CoreData


extension Game {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Game> {
        return NSFetchRequest<Game>(entityName: "Game")
    }

    @NSManaged public var playerid: Int16
    @NSManaged public var gamestatus: Bool
    @NSManaged public var xscore: Int64
    @NSManaged public var yscore: Int64

}

extension Game : Identifiable {

}
