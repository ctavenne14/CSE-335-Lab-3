//
//  moonViewController.swift
//  Lab3
//
//  Created by Cody Tavenner on 2/8/19.
//  Copyright © 2019 Cody Tavenner. All rights reserved.
//

import UIKit

class moonViewController: UIViewController {
    
    @IBOutlet weak var fromJupiter: UILabel!
    @IBOutlet weak var moonweight: UILabel!
    @IBOutlet weak var earthweight: UILabel!
    var mw:Double?
    var fromEarth:Double?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.earthweight.text = String(fromEarth!)
        mw = (fromEarth!)*1/6
        self.moonweight.text = String(mw!)
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toJupiterView"
        {
            let des = segue.destination as! jupiterViewController
            des.ew = fromEarth
            des.mw = mw
        }
    }
    
    @IBAction func returnedJupiterMoon(segue: UIStoryboardSegue)
    {
        fromJupiter.text = "Coming from Jupiter"
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
