//
//  jupiterViewController.swift
//  Lab3
//
//  Created by Cody Tavenner on 2/8/19.
//  Copyright © 2019 Cody Tavenner. All rights reserved.
//

import UIKit

class jupiterViewController: UIViewController {
    
    @IBOutlet weak var jWeight: UILabel!
    @IBOutlet weak var mWeight: UILabel!
    @IBOutlet weak var eWeight: UILabel!
    var ew:Double?
    var mw:Double?
    var jw:Double?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.eWeight.text = String(ew!)
        self.mWeight.text = String(mw!)
        jw = (ew!)*2.4
        self.jWeight.text = String(jw!)
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
