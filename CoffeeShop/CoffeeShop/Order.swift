//
//  Order.swift
//  CoffeeShop
//
//  Created by Ahmed Elbasha on 6/19/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import Foundation

// MARK: Order Class

class Order : NSObject{
    
    // MARK: Class's States
    
    var customerName : String = ""
    var addChocolate: Bool = false
    var addWhippedCream: Bool = false
    var quantity: Int = 0
    
    // MARK: Get Price Value
    
    func getPrice() -> Int {
        return self.quantity * 5
    }
}

