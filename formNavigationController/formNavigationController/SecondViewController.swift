//
//  SecondViewController.swift
//  formNavigationController
//
//  Created by Prakash A on 22/06/23.
//

import UIKit
 
protocol Delegatesample:AnyObject{
    func data(message:String?)
    }

class SecondViewController: UIViewController {
    
    weak var delegate:Delegatesample?
    var banks  = ["AXIS","ICICI"]
    var bank1 : String?
    var bank2 : String?
    
    @IBOutlet weak var buttonPrev: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPrevAction(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "firstVC") as! ViewController
        if banks.contains(bank2 ?? ""){
            delegate?.data(message: "Bankfound")
        }
        self.navigationController?.popViewController(animated: true)
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
