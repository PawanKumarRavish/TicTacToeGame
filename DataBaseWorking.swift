//
//  DataBaseWorking.swift
//  Lab1_PawanKumar_c0835049_ios
//
//  Created by Pawan Ravish on 2022-01-24.
//

import Foundation
import CoreData
import UIKit







class DatabaseManager{
    
    static var sharedInstance = DatabaseManager()    // shared instance of class so method of this class can be accessed in the view Cintroller or can say globally
    let context=(UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext // made context of application delegate to perform CRUd operations
    
    
    
    // tried to use  DataPersistance  But some litle mistake is ther with optional value i am not able to find that otherwise it all is working  i commented it all because it was creating  run time errror  you can check it and please correct me where i was wrong
    
 //   func saveData (object:[String:Any]) // function to save data in the database
  //  {
        
   //     let game=NSEntityDescription.insertNewObject(forEntityName: "Game", into: context!) as! Game
        
        
   //     game.gamestatus=(object["gamestatus"] != nil)
    //    game.playerid=object["playerid"] as! Int16
     //   game.xscore=object["xscore"] as! Int64
     //   game.yscore=object["yscore"] as! Int64
        
        
       // do {
         //   try context?.save()
           // print("data saved Succesfully")
     //   }
       // catch {
      //      print("data did not save" )
     //   }
        
        
        
        
  //  }
    
   // func getData() ->[Game]{
     //   var game=[Game]()
       // let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Game")
   //     do{
    //         try game =  context?.fetch(fetchRequest) as! [Game]
     //
      //  }
     //   catch{
       //     print("Data not found ")
     //   }
     //   return game
    //}
   
    
    
    
}
