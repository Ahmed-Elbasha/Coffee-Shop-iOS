//
//  OrderViewController.swift
//  CoffeeShop
//
//  Created by Ahmed Elbasha on 6/3/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {
    
    @IBOutlet weak var customerNameTextField: UITextField!
    @IBOutlet weak var addChocolateSwitch: UISwitch!
    @IBOutlet weak var addWhippedCreamSwitch: UISwitch!
    @IBOutlet weak var quantityStepper: UIStepper!
    @IBOutlet weak var quantityTextValue: UITextField!
    @IBOutlet weak var orderButton: UIButton!
    
    var addChocolate : Bool = true
    var addWhippedCream : Bool = true
    var quantity : Int = 0
    var customerName : String = ""
    var order: Order!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        resetUiToDefault()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func orderButtonPressed(_ sender: Any) {
        customerName = customerNameTextField.text!
        order = Order.init()
        
        order.customerName = self.customerName
        order.addChocolate = self.addChocolate
        order.addWhippedCream = self.addWhippedCream
        order.quantity = self.quantity
        
        performSegue(withIdentifier: "showOrderDetails", sender: order)
    }
    
    @IBAction func stepperValueChanged(_ sender: Any) {
        quantity = Int(quantityStepper.value)
        quantityTextValue.text = String(describing: quantity)
    }
    
    
    @IBAction func addChocolateSwitchValueChanged(_ sender: Any) {
        addChocolate = addChocolateSwitch.isOn
        
    }
    
    @IBAction func addWhippedCreamSwitchValueChanged(_ sender: Any) {
        addWhippedCream = addWhippedCreamSwitch.isOn
    }
    
    func resetUiToDefault() {
        addChocolateSwitch.isOn = false
        addWhippedCreamSwitch.isOn = false
        addChocolate = addChocolateSwitch.isOn
        addWhippedCream = addWhippedCreamSwitch.isOn
        
        customerNameTextField.text = ""
        
        quantityStepper.value = quantityStepper.minimumValue
        quantity = Int(quantityStepper.value)
        quantityTextValue.text = String(describing: quantity)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showOrderDetails" {
            let orderDetailsVC : OrderDetailsViewController = segue.destination as! OrderDetailsViewController
            let generatedOrder : Order = order
            let price : Int = generatedOrder.getPrice()
            orderDetailsVC.initData(order: generatedOrder, totalPrice: price)
        }
    }
}

