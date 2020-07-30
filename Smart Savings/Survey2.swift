//
//  Survey2.swift
//  Smart Savings
//
//  Created by Emma Benyaminy on 7/29/20.
//  Copyright © 2020 Emma Benyaminy. All rights reserved.
//

import UIKit


class Survey2: UIViewController {
    var price = " "
    var item = " "
    var countYes = 0
    var countNo = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func yesButton(_ sender: UIButton) {
        countYes += 1
        performSegue(withIdentifier: "Segue2", sender : self)
    }
    
    @IBAction func noButton(_ sender: UIButton) {
        countNo += 1
        performSegue(withIdentifier: "Segue2", sender: self)
    }
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let vs = segue.destination as? Survey3
         vs?.countYes = countYes
         vs?.countNo = countNo
         vs?.price = price
         vs?.item = item
     
     }

}
