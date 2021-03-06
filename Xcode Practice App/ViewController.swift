//
//  ViewController.swift
//  Xcode Practice App
//
//  Created by Kenneth Uyabeme on 9/28/18.
//  Copyright © 2018 Kenneth Uyabeme. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   /**
     send data on the screen 1 and create variable on screen 2 receive the
     data
     */
    @IBOutlet weak var readInText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let data = readInText.text!
        
        let screen2 = segue.destination as! Screen2ViewController
        screen2.screen2display.text = "\(data)"
        
        
    }
}

