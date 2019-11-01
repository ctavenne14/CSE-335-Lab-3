//
//  ViewController.swift
//  Lab3
//
//  Created by Cody Tavenner on 2/8/19.
//  Copyright © 2019 Cody Tavenner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightEarth: UITextField!
    @IBOutlet weak var fromMoon: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toMoonView"
        {
            let des = segue.destination as! moonViewController
            des.fromEarth = Double(weightEarth.text!)
        }
    }
    
    @IBAction func returnedMoon(segue: UIStoryboardSegue)
    {
        fromMoon.text = "Coming from the moon"
    }
    
    @IBAction func returnedJupiter(segue: UIStoryboardSegue)
    {
        fromMoon.text = "Coming from Jupiter"
    }
}

