//
//  OrderDetailsViewController.swift
//  CoffeeShop
//
//  Created by Ahmed Elbasha on 6/19/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

class OrderDetailsViewController: UIViewController {
    
    var order : Order!
    var totalPrice: Double = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initData( order : Order, totalPrice : Double ) {
        self.order = order
        self.totalPrice = totalPrice
        print("price: \(totalPrice)")
        print("Name: \(self.order.customerName)")
        print("add Chocolate: \(self.order.addChocolate)")
        print("add Whipped Cream: \(self.order.addWhippedCream)")
        print("quantity: \(self.order.quantity)")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
