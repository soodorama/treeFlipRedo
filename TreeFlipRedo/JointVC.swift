//
//  JointVC.swift
//  TreeFlipRedo
//
//  Created by Neil Sood on 10/10/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

protocol JointVCDelegate: class {
    
}

class JointVC: UIViewController {
    
    @IBOutlet weak var lsLabel: UILabel!
    @IBOutlet weak var lpsLabel: UILabel!
    @IBOutlet weak var lspLabel: UILabel!
    @IBOutlet weak var lpspLabel: UILabel!
    
    @IBOutlet weak var lsProbability: UILabel!
    @IBOutlet weak var lpsProbability: UILabel!
    @IBOutlet weak var lspProbability: UILabel!
    @IBOutlet weak var lpspProbability: UILabel!
    
    var data: [String:String] = [:]
    var delegate: JointVCDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        lsProbability.text = data["lsProbability"]
        lpsProbability.text = data["lpsProbability"]
        lspProbability.text = data["lspProbability"]
        lpspProbability.text = data["lpspProbability"]
    }

}
