//
//  PartyManager.swift
//  PartyApp
//
//  Created by Xiangrui Zhang on 16/11/24.
//  Copyright © 2016年 Xiangrui Zhang. All rights reserved.
//

import UIKit

var partyMgr: PartyManager = PartyManager()

struct party{
    var name = "Un-Named"
    var desc = "Un-Described"
}

class PartyManager: NSObject {

    var parties = [party]()
    
    func addParty(name:String, desc:String){
        parties.append(party(name: name, desc: desc))
    }
    
}
