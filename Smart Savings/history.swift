//
//  history.swift
//  Smart Savings
//
//  Created by Emma Benyaminy on 7/29/20.
//  Copyright © 2020 Emma Benyaminy. All rights reserved.
//

import UIKit

class history: UIViewController {
    var price = 0.0
    var item = " "
    var budget = 0.0

    @IBOutlet weak var history1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        history1.text = item

        // Do any additional setup after loading the view.
    }
    
    @IBAction func button1(_ sender: UIButton) {
        performSegue(withIdentifier: "Segue9", sender: self)
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vs = segue.destination as? afford
            vs?.item = item
            vs?.budget = budget
            vs?.price = price 
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
