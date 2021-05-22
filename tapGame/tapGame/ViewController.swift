//
//  ViewController.swift
//  tapGame
//
//  Created by Bedirhan Savaş on 28.04.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }

    @IBAction func playButton(_ sender: Any) {
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
}

