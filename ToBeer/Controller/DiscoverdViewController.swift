//
//  DiscoverdViewController.swift
//  ToBeer
//
//  Created by Seo JaeHyeong on 24/03/2018.
//  Copyright © 2018 Seo Jaehyeong. All rights reserved.
//

import UIKit
import BarcodeScanner

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
   
   private var beerInfo: Beer?
   
   var info: Beer? {
      willSet{
         beerInfo = newValue
      }
   }
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      if let beer = beerInfo {
         beerImage.image = UIImage(named: beer.image)
         companyLb.text = beer.company
         beerNameLb.text = beer.name
         beerTypeLb.text = beer.type
         beerNationLb.text = beer.nation
         beerAlcoholLb.text = beer.alcohol
         beerDescriptionLb.text = beer.descrip
         
         var feeling: [UILabel] = [beerFeeling1_Lb,beerFeeling2_Lb,beerFeeling3_Lb,beerFeeling4_Lb,beerFeeling5_Lb]
         
         for (idx, feel) in beer.feeling.enumerated() {
            feeling[idx].text = feel
         }
      }
      
   }
   
   
   @IBAction func handleScannerPresent(_ sender: UIButton) {
      self.dismiss(animated: true, completion: nil)
   }
   
}
