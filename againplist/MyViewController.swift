//
//  MyViewController.swift
//  againplist
//
//  Created by greens on 28/01/21.
//  Copyright © 2021 Greens. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
    
    var xnames = ""
    var xgenders = ""
    var xcourses = ""
    var xphones = ""
    var xmobiles = ""
    
    @IBOutlet weak var nameslbl: UILabel!
    
    @IBOutlet weak var genderlbl: UILabel!
    
    @IBOutlet weak var courselbl: UILabel!
    
    @IBOutlet weak var phonelbl: UILabel!
    
    @IBOutlet weak var mobilelbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameslbl.text = xnames
        genderlbl.text = xgenders
        courselbl.text = xcourses
        phonelbl.text = xphones
        mobilelbl.text = xmobiles

        // Do any additional setup after loading the view.
    }

}
