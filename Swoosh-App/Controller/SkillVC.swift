//
//  SkillVC.swift
//  Swoosh-App
//
//  Created by Asfand HAfeez on 31/10/2018.
//  Copyright © 2018 Asfand HAfeez. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    var player: Player!
     @IBOutlet weak var NameLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        if let text = NameLabel {
            NameLabel.text = player.desiredLeague
        }
    }

  
   
    
 

}
