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
    var quantity : Double = 0
    var customerName : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        addChocolateSwitch.isOn = false
        addWhippedCreamSwitch.isOn = false
        addChocolate = addChocolateSwitch.isOn
        addWhippedCream = addWhippedCreamSwitch.isOn
        quantity = quantityStepper.value
        quantityTextValue.text = String(describing: quantity)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func orderButtonPressed(_ sender: Any) {
        print("order button was pressed")
    }
    
    @IBAction func stepperValueChanged(_ sender: Any) {
        quantity = quantityStepper.value
        quantityTextValue.text = String(describing: quantity)
    }
    
    
    @IBAction func addChocolateSwitchValueChanged(_ sender: Any) {
        addChocolate = addChocolateSwitch.isOn
        
    }
    
    @IBAction func addWhippedCreamSwitchValueChanged(_ sender: Any) {
        addWhippedCream = addWhippedCreamSwitch.isOn
    }
}

