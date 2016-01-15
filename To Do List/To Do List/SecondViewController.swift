//
//  SecondViewController.swift
//  To Do List
//
//  Created by Kyra Drake on 1/14/16.
//  Copyright © 2016 Kyra Drake. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func enterButton(sender: AnyObject) {
        
        toDoList.append(textField.text!)
        
        textField.text = ""
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //CONTROL KEYBOARD
    //closes keyboard when somewhere outside the keyboard is tapped
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        //closes keyboard
        self.view.endEditing(true)
    }
    
    //allows user to close the keyboard using the return button
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }

}

