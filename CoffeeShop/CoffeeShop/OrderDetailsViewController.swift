//
//  OrderDetailsViewController.swift
//  CoffeeShop
//
//  Created by Ahmed Elbasha on 6/19/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

// MARK: OrderDetailsViewController Class

class OrderDetailsViewController: UIViewController {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var customerNameLabel: UILabel!
    @IBOutlet weak var hasChocolateLabel: UILabel!
    @IBOutlet weak var hasWhippedCreamLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    // MARK: Class's states
    
    var order : Order!
    var totalPrice: Int = 0
    
    // ViewController'x Life Cycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Intialize ViewController's Data
    
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

    // MARK: IBActions
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func submitOrderButtonPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Thank you", message: "Thank you for purchase", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (UIAlertAction) in
            self.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    // MARK: UI Configuration
    
    func configureUI() {
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
