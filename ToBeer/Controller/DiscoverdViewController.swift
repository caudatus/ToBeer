//
//  DiscoverdViewController.swift
//  myToBeer
//
//  Created by Himchan Park on 2018. 3. 24..
//  Copyright © 2018년 Himchan Park. All rights reserved.
//

import UIKit

class DiscoverdViewController: UIViewController {

   
   @IBOutlet weak var beerImage: UIImageView!
   @IBOutlet weak var companyLb: UILabel!
   @IBOutlet weak var beerNameLb: UILabel!
   @IBOutlet weak var beerTypeLb: UILabel!
   @IBOutlet weak var beerNationLb: UILabel!
   @IBOutlet weak var beerAlcoholLb: UILabel!
   @IBOutlet weak var beerDescriptionLb: UITextView!
   
   @IBOutlet weak var beerFeeling1_Lb: UILabel!
   @IBOutlet weak var beerFeeling2_Lb: UILabel!
   @IBOutlet weak var beerFeeling3_Lb: UILabel!
   @IBOutlet weak var beerFeeling4_Lb: UILabel!
   @IBOutlet weak var beerFeeling5_Lb: UILabel!
   
   private var barcode: String?
   var db = Bear.shared
    
    var inputBarcode: String? {
        willSet{
            barcode = newValue
        }
    }
   
    //    bear.db.barcode : DB Barcode Infomation
    override func viewDidLoad() {
      super.viewDidLoad()
      
      let beer: BeerModel = db.getBeerModel(barcode: barcode!)
      
      beerImage.image = UIImage(named: beer.image)
      companyLb.text = beer.company
      beerNameLb.text = beer.name
      beerTypeLb.text = beer.type
      beerNationLb.text = beer.nation
      beerAlcoholLb.text = beer.alcohol
      beerDescriptionLb.text = beer.description
      
      var feeling: [UILabel] = [beerFeeling1_Lb,beerFeeling2_Lb,beerFeeling3_Lb,beerFeeling4_Lb,beerFeeling5_Lb]
      
      for (idx, feel) in beer.feeling.enumerated() {
         feeling[idx].text = feel
      }
      
    }
   

   
}
