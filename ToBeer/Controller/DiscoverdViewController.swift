//
//  DiscoverdViewController.swift
//  myToBeer
//
//  Created by Himchan Park on 2018. 3. 24..
//  Copyright © 2018년 Himchan Park. All rights reserved.
//

import UIKit

class DiscoverdViewController: UIViewController {

    private var barcode: String?
    
    var inputBarcode: String? {
        willSet{
            barcode = newValue
        }
    }
   
    //    bear.db.barcode : DB Barcode Infomation
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
}
