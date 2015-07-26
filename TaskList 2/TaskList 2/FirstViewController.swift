//
//  FirstViewController.swift
//  TaskList 2
//
//  Created by Basti on 25-07-15.
//  Copyright (c) 2015 Basti RZ. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tblTasks: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //UITableViewDelete ELIMINAR UN REGISTRO DESLIZANDO DEDO
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            //println("Delete this row")
            //elimina el registro
            taskMgr.tasks.removeAtIndex(indexPath.row)
            //actualiza la tabla
            tblTasks.reloadData();
        }
    }
    
    // Retornar al view
    override func viewWillAppear(animated: Bool) {
        tblTasks.reloadData();
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return taskMgr.tasks.count
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        // ************   verificar como se puede solucionar esto
        //cell.text = taskMgr.tasks[indexPath.row].name ------> deprecado se reemplaza por siguiente linea
        cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].desc
    
        return cell
    
    }

}

