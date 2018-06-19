//
//  Order.swift
//  CoffeeShop
//
//  Created by Ahmed Elbasha on 6/19/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import Foundation

class Order : NSObject{
    
    var customerName : String!
    var addChocolate: Bool!
    var addWhippedCream: Bool!
    var quantity: Double!
    
    func getPrice() -> Double {
        return self.quantity * 5
    }
}

