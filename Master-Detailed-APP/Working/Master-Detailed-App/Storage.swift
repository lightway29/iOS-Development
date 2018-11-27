//
//  Storage.swift
//  Master-Detailed-App
//
//  Created by Lightway on 11/8/18.
//  Copyright © 2018 Lightway. All rights reserved.
//

import Foundation

class Storage {
    static let shared: Storage = Storage()
    
    var objects: [Item]
    
    private init(){
        objects = [Item]()
    }
}
