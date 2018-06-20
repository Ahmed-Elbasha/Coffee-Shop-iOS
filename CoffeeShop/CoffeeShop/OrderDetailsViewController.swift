//
//  OrderDetailsViewController.swift
//  CoffeeShop
//
//  Created by Ahmed Elbasha on 6/19/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

class OrderDetailsViewController: UIViewController {
    
    @IBOutlet weak var customerNameLabel: UILabel!
    @IBOutlet weak var hasChocolateLabel: UILabel!
    @IBOutlet weak var hasWhippedCreamLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var order : Order!
    var totalPrice: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUi()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initData( order : Order, totalPrice : Int ) {
        self.order = order
        self.totalPrice = totalPrice
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func backButtonPressed(_ sender: Any) {
        print("back button was pressed")
    }
    
    @IBAction func submitOrderButtonPressed(_ sender: Any) {
        print("submit order button was pressed")
    }
    
    func configureUi() {
        customerNameLabel.text = order.customerName
        
        if (order.addChocolate) {
            hasChocolateLabel.text = "Yes"
        } else {
            hasChocolateLabel.text = "No"
        }
        
        if (order.addWhippedCream) {
            hasWhippedCreamLabel.text = "Yes"
        } else {
            hasWhippedCreamLabel.text = "No"
        }
        
        quantityLabel.text = String(describing: order.quantity)
        priceLabel.text = String(describing: totalPrice)
    }
}
