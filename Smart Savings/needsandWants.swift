//
//  needsandWants.swift
//  Smart Savings
//
//  Created by Emma Benyaminy on 7/29/20.
//  Copyright © 2020 Emma Benyaminy. All rights reserved.
//

import UIKit

class needsandWants: UIViewController {
    var countYes = 0
    var countNo = 0 

    @IBOutlet weak var resultLabel: UITextField!
    @IBOutlet weak var noTextField: UITextField!
    @IBOutlet weak var yesTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        yesTextField.text = "\(countYes)"
        noTextField.text = "\(countNo)"
        if countYes >= 3{
            resultLabel.text = "Buy Item!"
            
        } else{
            resultLabel.text = "Wait to buy item."
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
