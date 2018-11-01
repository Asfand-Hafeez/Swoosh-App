//
//  LeagueVC.swift
//  Swoosh-App
//
//  Created by Asfand HAfeez on 31/10/2018.
//  Copyright © 2018 Asfand HAfeez. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player : Player!
    @IBOutlet weak var NextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

   
    @IBAction func OnClickNext(_ sender: Any) {
        
        performSegue(withIdentifier: "SkillVCSegue" , sender: self)
      
        
    }
    
    @IBAction func OnClickMens(_ sender: Any) {
        selectedLeague(leaguetype: "mens")
        
    }
    @IBAction func OnClickWomens(_ sender: Any) {
        selectedLeague(leaguetype: "womens")
    }
    
    @IBAction func OnClickCoed(_ sender: Any) {
        selectedLeague(leaguetype: "coad")
    
    }
   func  selectedLeague(leaguetype: String) {
    player.desiredLeague = leaguetype
    NextButton.isEnabled = true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }


}
