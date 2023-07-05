//
//  ViewController.swift
//  formNavigationController
//
//  Created by Prakash A on 23/06/23.
//

import UIKit

class ViewController: UIViewController ,Delegatesample {
    
    var banks: String?
    
    @IBOutlet weak var buttonNext: UIButton!
    @IBOutlet weak var sampleTV: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    func data(message: String?) {
        sampleTV.text = message
    }

    @IBAction func buttonNextAction(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        vc.delegate = self
        vc.bank2 = "ICICI"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

