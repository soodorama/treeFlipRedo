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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flipButton.layer.cornerRadius = 5
    }

    @IBAction func flipPressed(_ sender: UIButton) {
//        guard let psf = Double(percentSField!.text) else { return }
//        guard let plsf = Double(percentLSField!.text) else { return }
//        print(psf * plsf)
    }
    
    
}
