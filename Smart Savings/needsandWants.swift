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
    var price = 0.0
    var item = " "
    var budget = 0.0

    @IBOutlet weak var resultLabel: UITextField!
    @IBOutlet weak var noTextField: UITextField!
    @IBOutlet weak var yesTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("itemNeedsAndWants: \(item)")
        yesTextField.text = "\(countYes)"
        noTextField.text = "\(countNo)"
        if countYes >= 3{
            resultLabel.text = "Buy the \(item)!"
            
        } else{
            resultLabel.text = "Wait to buy the \(item)."
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Segue2(_ sender: UIButton) {
        performSegue(withIdentifier: "Segue10", sender: self )
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vs = segue.destination as? history
        vs?.item = item
        vs?.budget = budget
        vs?.price = price
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
