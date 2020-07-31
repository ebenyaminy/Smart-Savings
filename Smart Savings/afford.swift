//
//  afford.swift
//  Smart Savings
//
//  Created by Emma Benyaminy on 7/29/20.
//  Copyright © 2020 Emma Benyaminy. All rights reserved.
//

import UIKit

class afford: UIViewController {
    var price = 0.0
    var item = " "
    var budget = 0.0

   
    @IBOutlet weak var budgetLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let difference = budget - price
        budgetLabel.text = " \(difference)"

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let vs = segue.destination as? history
           //    vs?.budget = budget
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
