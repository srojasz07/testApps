    //
//  SecondViewController.swift
//  TaskList 2
//
//  Created by Basti on 25-07-15.
//  Copyright (c) 2015 Basti RZ. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txtTask: UITextField!

    @IBOutlet var txtDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Eventos para hacer dejar un texto en la consola
    /*@IBAction func btnAddTask_click(sender: UIButton){
        println("the button")
    }*/
    
    @IBAction func btnAddTask_click(sender: UIButton){
        taskMgr.addTask(txtTask.text, desc: txtDesc.text)
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        // opcional 
        self.tabBarController?.selectedIndex = 0;
    }
    
    // verificar esta funcion que oculta el teclado, pero al parecer no vuelve a mostrarse
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
            self.view.endEditing(true);
    }
    
    
    // UITextFieldDelegate (se obtiene de ahi)
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        
        return true
    }
    
    

}

