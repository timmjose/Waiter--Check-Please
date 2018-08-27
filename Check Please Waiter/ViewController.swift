//
//  ViewController.swift
//  Check Please Waiter
//
//  Created by Timothy Joseph on 26/8/18.
//  Copyright © 2018 Tapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gTotal : Double?
    var fieldsCompleted : Bool = false
    var bill : Double = 0
    var tip : Double = 0
    var party : Double = 0
    
    @IBOutlet weak var grandTotal: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipTextField: UITextField!
    @IBOutlet weak var partySize: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
//        print (checkField())
        if let userSetBill = billTextField.text, let userSetTip = tipTextField.text, let userSetParty = partySize.text, let billValue = Double(userSetBill), let tipValue = Double(userSetTip), let partyValue = Double(userSetParty) {
            calculateMath(billValue: billValue, tipValue: tipValue, partyValue: partyValue)
        } else {
            print ("fields incomplete")
        }
    }
    
    
    //VALUABLE CODE xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    func calculateMath(billValue : Double, tipValue : Double, partyValue : Double) {
        tip = (tipValue / 100) * billValue
        bill = billValue + tip
        party = bill / partyValue

        updateUI(total: bill, split: party)
    } // xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    
    
    //VALUABLE CODE xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    
    func updateUI(total : Double, split : Double) {
        //grandTotal.text = "$ \(total), split : \(split)"
        grandTotal.text = String(format: "%.2f", total)
    } // xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
}

