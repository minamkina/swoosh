//
//  LeagueVC.swift
//  swoosh
//
//  Created by Mina Melek on 8/31/17.
//  Copyright © 2017 Mina Melek. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player = Player()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    
    @IBAction func nextBtnTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillsVCSegue", sender: self)
    }
    
    @IBOutlet weak var nextBtn: borderButton!
    
    @IBAction func mensBtnTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func womensBtnTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
        
    }
    
    @IBAction func coedBtnTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
 

}
