//
//  Item.swift
//  ToDoList
//
//  Created by Dimkus on 13/04/2019.
//  Copyright © 2019 Wandio. All rights reserved.
//

import Foundation
class Item: NSObject, NSCoding {
    
    var name: String
    static let Dir = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = Dir.appendingPathComponent("items")
    
    
    required init(name:String){
        self.name = name
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
    }
    
    required init(coder aDecoder: NSCoder){
        self.name = aDecoder.decodeObject(forKey: "name") as! String
    }
}
