//
//  SecondViewController.swift
//  PartyApp
//
//  Created by Xiangrui Zhang on 16/11/24.
//  Copyright © 2016年 Xiangrui Zhang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtParty: UITextField!
    @IBOutlet var txtDesc: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func btnAddParty_Click(sender: UIButton){
        partyMgr.addParty(name: txtParty.text!, desc: txtDesc.text!);
        self.view.endEditing(true)
        txtParty.text = ""
        txtDesc.text = ""
        self.tabBarController?.selectedIndex = 0;
    }
    
    
    //IOS touch functions
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        //click the blank to put the keyboard away.
    }
    
    
    // called when 'return' key pressed. return NO to ignore.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder();
        return true
    }


}

