//
//  Item.swift
//  Master-Detailed-App
//
//  Created by Lightway on 11/8/18.
//  Copyright © 2018 Lightway. All rights reserved.
//

import Foundation

class Item{
    var itemName:String
    var itemQuantity:String
    var itemDescription:String
    
    init(itemName:String,itemQuantity:String,itemDescription:String) {
        self.itemName = itemName
        self.itemQuantity = itemQuantity
        self.itemDescription =  itemDescription
    }
}
