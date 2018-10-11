//
//  MainVC.swift
//  TreeFlipRedo
//
//  Created by Neil Sood on 10/10/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var percentSField: UITextField!
    @IBOutlet weak var percentSPrimeLabel: UILabel!
    @IBOutlet weak var SField: UITextField!
    @IBOutlet weak var SPrimeField: UITextField!
    
    @IBOutlet weak var percentLSField: UITextField!
    @IBOutlet weak var percentLPrimeSLabel: UILabel!
    @IBOutlet weak var LSField: UITextField!
    @IBOutlet weak var LPrimeSField: UITextField!
    
    @IBOutlet weak var percentLSPrimeField: UITextField!
    @IBOutlet weak var percentLPrimeSPrimeLabel: UILabel!
    @IBOutlet weak var LSLabel: UILabel!
    @IBOutlet weak var LPrimeSPrimeLabel: UILabel!
    
    @IBOutlet weak var flipButton: UIButton!
    
    var data: [String:String] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flipButton.layer.cornerRadius = 5
        // dismiss keyboard on tap outside keyboard
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))

    }

    @IBAction func flipPressed(_ sender: UIButton) {
        print("Joint Probability:")
        guard let psf = Double(percentSField.text ?? "") else { return }
        guard let plsf = Double(percentLSField.text ?? "") else { return }
        guard let plspf = Double(percentLSPrimeField.text ?? "") else { return }
        
        data["lsProbability"] = String((psf * plsf) / 100)
        data["lpsProbability"] = String((psf * (100-plsf)) / 100)
        
        data["lspProbability"] = String(((100-psf) * plspf) / 100)
        data["lpspProbability"] = String(((100-psf) * (100-plspf)) / 100)
        
        
        print("S and S'")
        print(psf)
        print(100.0 - psf)

        print("L|S and L'|S")
        print(plsf)
        print(100.0 - plsf)
        
        print("L|S' and L'|S'")
        print(plspf)
        print(100.0 - plspf)
        
        performSegue(withIdentifier: "ShowJointSegue", sender: sender)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as! JointVC
        dest.delegate = self
        dest.data = data
    }

}


extension MainVC: UITextFieldDelegate {
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        if let psf = Double(percentSField.text ?? "") {
//            percentSPrimeLabel.text = String(100.0 - psf)
//        }
//        return true
//    }
//
//    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
//        if let psf = Double(percentSField.text ?? "") {
//            percentSPrimeLabel.text = String(100.0 - psf)
//        }
//        return true
//    }
}

extension MainVC: JointVCDelegate {
    
}
