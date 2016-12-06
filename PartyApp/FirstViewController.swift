//
//  FirstViewController.swift
//  PartyApp
//
//  Created by Xiangrui Zhang on 16/11/24.
//  Copyright © 2016年 Xiangrui Zhang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tblParties: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Returning to view
    override func viewWillAppear(_ animated: Bool) {
        tblParties.reloadData();
    }
    
    // Data manipulation - reorder / moving support
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        
        if(editingStyle == UITableViewCellEditingStyle.delete){
            partyMgr.parties.remove(at: indexPath.row)
            tblParties.reloadData();
        }
    }

    
    //UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return partyMgr.parties.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "test")
        
        cell.textLabel!.text = partyMgr.parties[indexPath.row].name
        cell.detailTextLabel!.text = partyMgr.parties[indexPath.row].desc
        
        return cell
    }


}

